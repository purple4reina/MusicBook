#!/usr/bin/env node
// Regenerates the timeline data embedded in roadmap.html from the rendered score.
//
//   node images/roadmap.build.mjs
//
// Reads ../audio/full-score.midi (produced by audio-files.ly), extracts when each of
// the 11 clarinet parts (Live + Cl1..Cl10) is sounding, works out the movement
// boundaries and the 90 rehearsal-mark times, and rewrites the <script id="nyc-data">
// block in roadmap.html. No dependencies.

import { readFileSync, writeFileSync } from "node:fs";
import { fileURLToPath } from "node:url";
import { dirname, join } from "node:path";

const here = dirname(fileURLToPath(import.meta.url));
const MIDI = join(here, "..", "audio", "full-score.midi");
const HTML = join(here, "roadmap.html");

// --- minimal Standard MIDI File reader -------------------------------------------------
function parseMidi(buf) {
  let p = 0;
  const u32 = () => { const v = buf.readUInt32BE(p); p += 4; return v; };
  const u16 = () => { const v = buf.readUInt16BE(p); p += 2; return v; };
  const vlq = () => { let v = 0, c; do { c = buf[p++]; v = (v << 7) | (c & 0x7f); } while (c & 0x80); return v; };

  if (buf.toString("ascii", 0, 4) !== "MThd") throw new Error("not a MIDI file");
  p += 4; u32();
  u16();                       // format
  const ntrk = u16();
  const division = u16();      // ticks per quarter note

  const tempos = [];           // [tick, microsecondsPerQuarter]
  const tracks = [];           // per track: array of [onTick, offTick]
  for (let t = 0; t < ntrk; t++) {
    if (buf.toString("ascii", p, p + 4) !== "MTrk") break;
    p += 4;
    const len = u32();
    const end = p + len;
    let tick = 0, running = 0;
    const held = {};           // pitch -> queue of onset ticks
    const notes = [];
    while (p < end) {
      tick += vlq();
      let ev = buf[p];
      if (ev & 0x80) { p++; running = ev; } else { ev = running; }
      if (ev === 0xff) {
        const meta = buf[p++];
        const len = vlq();
        const data = buf.slice(p, p + len); p += len;
        if (meta === 0x51) tempos.push([tick, (data[0] << 16) | (data[1] << 8) | data[2]]);
        if (meta === 0x2f) break;
      } else if (ev === 0xf0 || ev === 0xf7) {
        p += vlq();
      } else {
        const type = ev & 0xf0;
        if (type === 0x90) {
          const pitch = buf[p], vel = buf[p + 1]; p += 2;
          if (vel > 0) (held[pitch] = held[pitch] || []).push(tick);
          else if (held[pitch] && held[pitch].length) notes.push([held[pitch].shift(), tick]);
        } else if (type === 0x80) {
          const pitch = buf[p]; p += 2;
          if (held[pitch] && held[pitch].length) notes.push([held[pitch].shift(), tick]);
        } else if (type === 0xc0 || type === 0xd0) {
          p += 1;
        } else {
          p += 2;
        }
      }
    }
    p = end;
    tracks.push(notes);
  }
  tempos.sort((a, b) => a[0] - b[0]);
  if (!tempos.length) tempos.push([0, 500000]);
  return { division, tempos, tracks };
}

const { division, tempos, tracks } = parseMidi(readFileSync(MIDI));

// tick -> seconds using the tempo map
function tickToSec(target) {
  let sec = 0, last = 0, cur = tempos[0][1];
  for (const [tk, us] of tempos) {
    if (tk >= target) break;
    sec += ((tk - last) / division) * (cur / 1e6);
    last = tk; cur = us;
  }
  return sec + ((target - last) / division) * (cur / 1e6);
}

// --- structural constants from audio-files.ly ---------------------------------------
// 4-measure count-off in 3/2 at half = 88  ->  4 * 3 * (division*2) ticks
const COUNT_OFF_TICKS = 4 * 3 * (division * 2);           // 9216
const MVT1_START = COUNT_OFF_TICKS;

// ticksPerMeasureI: 152 measures, 3/2 except mm. 11, 23, 34 which are 2/2. Unit: half notes.
const tpmI = Array.from({ length: 152 }, (_, i) => ([11, 23, 34].includes(i + 1) ? 2 : 3) * (division * 2));
// ticksPerMeasureII: 82 measures of 3/4. Unit: quarter notes.
const tpmII = Array.from({ length: 82 }, () => 3 * division);
// ticksPerMeasureIII: 107 measures of 3/2. Unit: half notes.
const tpmIII = Array.from({ length: 107 }, () => 3 * (division * 2));

const MVT2_START = MVT1_START + tpmI.reduce((a, b) => a + b, 0);      // 357120
const MVT3_START = MVT2_START + tpmII.reduce((a, b) => a + b, 0);     // 451584
const END_TICK = MVT3_START + tpmIII.reduce((a, b) => a + b, 0);      // 698112

const OFFSET = tickToSec(COUNT_OFF_TICKS);   // seconds of count-off to strip; piece t=0 at mvt I downbeat

// measure carrying each rehearsal mark, one list per movement (audio-files.ly)
const markMeasuresI = [7, 12, 18, 24, 30, 35, 41, 48, 50, 53, 55, 56, 58, 60, 61, 64, 66, 68, 70, 71, 74, 77,
  79, 81, 82, 85, 87, 88, 90, 92, 93, 96, 98, 100, 102, 104, 106, 114, 122, 128, 136, 144, 150];
const markMeasuresII = [1, 5, 9, 13, 19, 23, 27, 29, 33, 35, 37, 43, 49, 57, 63, 69, 77];
const markMeasuresIII = [1, 5, 9, 11, 13, 19, 25, 29, 31, 33, 39, 45, 49, 53, 57, 61, 65, 67, 69, 71, 73, 75,
  77, 79, 81, 83, 85, 87, 93, 99];

function measureDownbeatTick(start, tpm, measure) {
  let tick = start;
  for (let i = 0; i < measure - 1; i++) tick += tpm[i];
  return tick;
}

const marks = [];
let markNo = 1;
for (const m of markMeasuresI) marks.push({ n: markNo++, t: round(tickToSec(measureDownbeatTick(MVT1_START, tpmI, m)) - OFFSET) });
for (const m of markMeasuresII) marks.push({ n: markNo++, t: round(tickToSec(measureDownbeatTick(MVT2_START, tpmII, m)) - OFFSET) });
for (const m of markMeasuresIII) marks.push({ n: markNo++, t: round(tickToSec(measureDownbeatTick(MVT3_START, tpmIII, m)) - OFFSET) });

// --- per-part sounding intervals ---------------------------------------------------
// audio-files.ly emits <allParts> then a click track per movement, allParts = [Live, Cl1..Cl10].
// full-score.midi track 0 = conductor, 1..2 = count-off scaffolding, then 12 tracks per movement.
const PART_LABELS = ["Live", "Cl1", "Cl2", "Cl3", "Cl4", "Cl5", "Cl6", "Cl7", "Cl8", "Cl9", "Cl10"];
const MVT_TRACK_BASE = [3, 15, 27];   // first part track of each movement; +11 is that movement's click
const MERGE_GAP = 0.2;                 // s: join tied / beamed notes only, keep the phrasing honest

const parts = {};
for (let k = 0; k < PART_LABELS.length; k++) {
  const iv = [];
  for (const base of MVT_TRACK_BASE) {
    for (const [on, off] of tracks[base + k] || []) {
      iv.push([tickToSec(on) - OFFSET, tickToSec(Math.max(off, on + 1)) - OFFSET]);
    }
  }
  iv.sort((a, b) => a[0] - b[0]);
  const segs = [];
  for (let [s, e] of iv) {
    s = Math.max(0, s);
    if (segs.length && s - segs[segs.length - 1][1] <= MERGE_GAP) {
      segs[segs.length - 1][1] = Math.max(segs[segs.length - 1][1], e);
    } else {
      segs.push([s, e]);
    }
  }
  parts[PART_LABELS[k]] = { segs: segs.map(([s, e]) => [round(s), round(e)]) };
}

function round(x) { return Math.round(x * 100) / 100; }

const data = {
  generated: process.env.GIT_SHA || "unknown",
  totalSec: round(tickToSec(END_TICK) - OFFSET),
  countOffSec: round(OFFSET),
  movements: [
    { name: "I", start: 0 },
    { name: "II", start: round(tickToSec(MVT2_START) - OFFSET) },
    { name: "III", start: round(tickToSec(MVT3_START) - OFFSET) },
  ],
  marks,
  parts,
};

// --- inject into roadmap.html ----------------------------------------------------
const OPEN = '<script id="nyc-data" type="application/json">';
const CLOSE = "</script>";
let html = readFileSync(HTML, "utf8");
const i = html.indexOf(OPEN);
if (i === -1) throw new Error(`marker ${OPEN} not found in roadmap.html`);
const j = html.indexOf(CLOSE, i);
html = html.slice(0, i + OPEN.length) + "\n" + JSON.stringify(data) + "\n" + html.slice(j);
writeFileSync(HTML, html);

const segCount = Object.values(parts).reduce((a, p) => a + p.segs.length, 0);
console.log(`movements @ ${data.movements.map(m => m.start).join(" / ")}  end ${data.totalSec}s`);
console.log(`${marks.length} rehearsal marks, ${segCount} sounding intervals across ${PART_LABELS.length} parts`);
console.log(`wrote ${HTML}`);
