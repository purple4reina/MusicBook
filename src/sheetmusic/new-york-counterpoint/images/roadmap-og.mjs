#!/usr/bin/env node
// Generates the shareable assets for roadmap.html:
//   images/roadmap-og.png        link-preview / social card (1200x630)
//   images/roadmap-favicon.svg   favicon (crisp, used first)
//   images/roadmap-favicon.png   favicon fallback (48x48)
//
// The card is the room diagram (default "paired outward" layout) frozen at the piece's
// final sounding moment (~t=693 s: Live + Cl1, Cl2, Cl4, Cl5, Cl7 lit), beside the title.
//
//   node images/roadmap-og.mjs        (needs rsvg-convert on PATH)

import { writeFileSync, unlinkSync } from "node:fs";
import { execFileSync } from "node:child_process";
import { fileURLToPath } from "node:url";
import { dirname, join } from "node:path";

const here = dirname(fileURLToPath(import.meta.url));
const OUT_SVG = join(here, "roadmap-og.svg");
const OUT_PNG = join(here, "roadmap-og.png");
const FAV_SVG = join(here, "roadmap-favicon.svg");
const FAV_PNG = join(here, "roadmap-favicon.png");

const W = 1200, H = 630;
const CX = 796, CY = 313, RING_R = 233, NODE_R = 28;    // diagram, right side
const STEP = 360 / 11;                                  // 11 evenly spaced points
const SLOT_TH = [-1, 1, -2, 2, -3, 3, -4, 4, -5, 5].map(k => k * STEP); // L1,R1,…,L5,R5
const SLOT_CLAR = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];      // paired-outward default
const LIT = new Set(["Live", "Cl1", "Cl2", "Cl4", "Cl5", "Cl7"]);

const SANS = "'Avenir Next', 'Helvetica Neue', Helvetica, Arial, sans-serif";
const rad = d => (d * Math.PI) / 180;
const pos = (th, r) => [CX + r * Math.sin(rad(th)), CY - r * Math.cos(rad(th))];
const f = n => +n.toFixed(2);

function text(x, y, s, { size = 16, weight = 400, fill = "#9a8fb4", ls = 0, anchor = "start" } = {}) {
  return `<text x="${f(x)}" y="${f(y)}" font-family="${SANS}" font-size="${size}" ` +
    `font-weight="${weight}" fill="${fill}" text-anchor="${anchor}"` +
    `${ls ? ` letter-spacing="${ls}"` : ""}>${s}</text>`;
}

function node(x, y, R, lit, perf, label) {
  const p = [];
  if (lit) p.push(`<circle cx="${f(x)}" cy="${f(y)}" r="${f(R * 2.9)}" fill="url(#${perf ? "glowP" : "glow"})"/>`);
  p.push(`<circle cx="${f(x)}" cy="${f(y)}" r="${R}" fill="${perf ? "#372e54" : "#2a2340"}"/>`);
  p.push(`<circle cx="${f(x)}" cy="${f(y)}" r="${R}" fill="none" stroke="${perf ? "#9683c4" : "#4c4368"}" stroke-width="2.4"/>`);
  if (lit) p.push(`<circle cx="${f(x)}" cy="${f(y)}" r="${R - 3.5}" fill="#fbf8ff"/>`);
  const lblFill = lit ? (perf ? "#1c1030" : "#221533") : (perf ? "#cdbcec" : "#e9dff7");
  p.push(
    `<text x="${f(x)}" y="${f(y + (perf ? 0 : 0.5))}" text-anchor="middle" dominant-baseline="central" ` +
    `font-family="${SANS}" font-weight="${perf ? 600 : 700}" font-size="${perf ? 14 : 18}" ` +
    `${perf ? 'letter-spacing="1.4" ' : ""}fill="${lblFill}">${label}</text>`
  );
  return `<g>${p.join("")}</g>`;
}

const spokes = [0, ...SLOT_TH].map(th => {
  const [x, y] = pos(th, RING_R);
  return `<line x1="${CX}" y1="${CY}" x2="${f(x)}" y2="${f(y)}" stroke="#221930" stroke-width="1.4"/>`;
}).join("");

const audience = (() => {
  const rows = 5, cols = 9, dx = 23, dy = 19, out = [];
  for (let r = 0; r < rows; r++)
    for (let c = 0; c < cols; c++) {
      const x = CX - ((cols - 1) * dx) / 2 + c * dx + (r % 2) * 11;
      const y = CY - 8 - ((rows - 1) * dy) / 2 + r * dy;
      out.push(`<circle cx="${f(x)}" cy="${f(y)}" r="3" fill="#645a80" opacity="0.6"/>`);
    }
  out.push(text(CX, CY + 88, "AUDIENCE", { size: 12.5, weight: 500, fill: "#6f6488", ls: 5, anchor: "middle" }));
  return out.join("");
})();

const speakers = SLOT_TH.map((th, i) => {
  const [x, y] = pos(th, RING_R);
  return node(x, y, NODE_R, LIT.has("Cl" + SLOT_CLAR[i]), false, String(SLOT_CLAR[i]));
}).join("");

const [px, py] = pos(0, RING_R);
const performer = node(px, py, NODE_R + 4, LIT.has("Live"), true, "LIVE");

// --- title block (left) ---
const TX = 74;
const title = [
  text(TX + 2, 206, "STEVE REICH", { size: 15, weight: 600, fill: "#8b7fb0", ls: 3.5 }),
  text(TX, 266, "New York", { size: 54, weight: 600, fill: "#f3e9ff", ls: -0.5 }),
  text(TX, 322, "Counterpoint", { size: 54, weight: 600, fill: "#f3e9ff", ls: -0.5 }),
  text(TX + 2, 370, "Speaker Layout Explorer", { size: 23, weight: 500, fill: "#c9a3ff", ls: 0.3 }),
  text(TX + 2, 416, "See which of the ten recorded parts sounds", { size: 15.5, weight: 400, fill: "#9a8fb4" }),
  text(TX + 2, 438, "from each speaker, across the whole piece.", { size: 15.5, weight: 400, fill: "#9a8fb4" }),
  text(TX + 2, 552, "purple4reina.github.io/MusicBook", { size: 13, weight: 500, fill: "#6f6488", ls: 0.6 }),
].join("");

const svg = `<svg xmlns="http://www.w3.org/2000/svg" width="${W}" height="${H}" viewBox="0 0 ${W} ${H}">
  <defs>
    <radialGradient id="bg" cx="72%" cy="10%" r="95%">
      <stop offset="0%" stop-color="#221a38"/>
      <stop offset="48%" stop-color="#151020"/>
      <stop offset="100%" stop-color="#0c0913"/>
    </radialGradient>
    <radialGradient id="glow">
      <stop offset="0%" stop-color="#e2ccff" stop-opacity="0.55"/>
      <stop offset="26%" stop-color="#b57bff" stop-opacity="0.36"/>
      <stop offset="62%" stop-color="#a259ff" stop-opacity="0.10"/>
      <stop offset="100%" stop-color="#a259ff" stop-opacity="0"/>
    </radialGradient>
    <radialGradient id="glowP">
      <stop offset="0%" stop-color="#f6ecff" stop-opacity="0.8"/>
      <stop offset="26%" stop-color="#d0adff" stop-opacity="0.44"/>
      <stop offset="62%" stop-color="#b57bff" stop-opacity="0.12"/>
      <stop offset="100%" stop-color="#b57bff" stop-opacity="0"/>
    </radialGradient>
  </defs>
  <rect width="${W}" height="${H}" fill="#0c0913"/>
  <rect width="${W}" height="${H}" fill="url(#bg)"/>
  <line x1="498" y1="152" x2="498" y2="470" stroke="#251c35" stroke-width="1.5"/>
  <circle cx="${CX}" cy="${CY}" r="${RING_R}" fill="none" stroke="#2c2242" stroke-width="1.5"/>
  ${spokes}
  ${audience}
  ${speakers}
  ${performer}
  ${title}
</svg>
`;

writeFileSync(OUT_SVG, svg);
execFileSync("rsvg-convert", ["-w", String(W), "-h", String(H), "-o", OUT_PNG, OUT_SVG], { stdio: "inherit" });
unlinkSync(OUT_SVG);
console.log(`wrote ${OUT_PNG}`);

// --- favicon: a ring of speakers with two lit — legible down to 16 px --------------
const favicon = (() => {
  const S = 48, c = S / 2, ring = 13, dots = 6;
  const litIdx = new Set([5, 0]);            // top two, echoing the card
  const parts = [
    `<rect width="${S}" height="${S}" rx="10" fill="#0f0c17"/>`,
    `<circle cx="${c}" cy="${c}" r="${ring}" fill="none" stroke="#312748" stroke-width="1.4"/>`,
  ];
  for (let i = 0; i < dots; i++) {
    const a = (i / dots) * Math.PI * 2 - Math.PI / 2;
    const x = +(c + ring * Math.cos(a)).toFixed(2);
    const y = +(c + ring * Math.sin(a)).toFixed(2);
    if (litIdx.has(i)) {
      parts.push(`<circle cx="${x}" cy="${y}" r="10.5" fill="url(#fg)"/>`);
      parts.push(`<circle cx="${x}" cy="${y}" r="4.4" fill="#f4e9ff"/>`);
    } else {
      parts.push(`<circle cx="${x}" cy="${y}" r="3.4" fill="#544a72"/>`);
    }
  }
  return `<svg xmlns="http://www.w3.org/2000/svg" width="${S}" height="${S}" viewBox="0 0 ${S} ${S}">` +
    `<defs><radialGradient id="fg">` +
    `<stop offset="0%" stop-color="#e6d3ff" stop-opacity="0.85"/>` +
    `<stop offset="38%" stop-color="#b57bff" stop-opacity="0.4"/>` +
    `<stop offset="100%" stop-color="#b57bff" stop-opacity="0"/>` +
    `</radialGradient></defs>${parts.join("")}</svg>\n`;
})();

writeFileSync(FAV_SVG, favicon);
execFileSync("rsvg-convert", ["-w", "48", "-h", "48", "-o", FAV_PNG, FAV_SVG], { stdio: "inherit" });
console.log(`wrote ${FAV_SVG}`);
console.log(`wrote ${FAV_PNG}`);
