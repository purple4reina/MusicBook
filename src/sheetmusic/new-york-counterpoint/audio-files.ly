countOffMeasures = 2
baseTempo = 88  % score says 92

\include "music/clarinets.ly"

allParts = #(list
  clarinet_Live
  clarinet_I
  clarinet_II
  clarinet_III
  clarinet_IV
  clarinet_V
  clarinet_VI
  clarinet_VII
  clarinet_VIII
  clarinet_IX
  clarinet_X
)

% ticks-per-measure lists for the click track, one entry per measure, taken
% from music/breaks.ly. The downbeat of each measure gets a higher-pitched,
% more audible click (wbh = hi woodblock) than the rest of the beats (rb =
% ridebell), so the count-in and beat can be heard clearly in the mix.
%
% mvt I: 152 measures, 3/2 (3 ticks) except mm. 11, 23 & 34, which are 2/2 (2 ticks)
ticksPerMeasureI = #(map (lambda (m) (if (memv m '(11 23 34)) 2 3)) (iota 152 1))

% mvt II: 82 measures, 3/4 (3 ticks each)
ticksPerMeasureII = #(make-list 82 3)

% mvt III: 107 measures, 3/2 (3 ticks each)
ticksPerMeasureIII = #(make-list 107 3)

% count-off: 2 lead-in measures plus \countOffMeasures rest measures, all 3/2
ticksPerMeasureCountOff = #(make-list (+ 2 countOffMeasures) 3)

addTicks = #(
  define-music-function
    (duration music measureTicks)
    (number? ly:music? list?)
  (
    let* ((tickDuration (ly:make-duration (ly:intlog2 duration) 0 1))
          (musicTicks
            (ly:moment-main-numerator
              (ly:moment-div
               (ly:music-length music)
               (ly:make-moment 1 duration))))
          (measureTickTotal (apply + measureTicks)))
    (if (not (= musicTicks measureTickTotal))
        (ly:error
          "addTicks: measureTicks totals ~a ticks but music is ~a ticks long"
          measureTickTotal musicTicks))
    #{
      \tempo $tickDuration = \baseTempo
      <<
        $music
        \new Devnull \with {
          \consists Drum_note_performer
          \consists Staff_performer
          \consists Dynamic_performer
          midiInstrument = #"woodblock"
        } {
          \set Staff.midiMinimumVolume = #1
          #@(map
              (lambda (n)
                #{
                  \drummode {
                    wbh$tickDuration
                    \repeat unfold $(max 0 (- n 1)) { rb$tickDuration }
                  }
                #})
              measureTicks)
        }
      >>
    #}
  )
)

countOff = {
  \time 3/2
  \transposition bes
  <>\ff <c' c''>1. <c' c''>1.
  R1.*\countOffMeasures
}

\score {
  \midi {}
  {
    \addTicks 2 << \countOff >> \ticksPerMeasureCountOff
    \addTicks 2 << #@(map part-I allParts) >> \ticksPerMeasureI
    \addTicks 4 << #@(map part-II allParts) >> \ticksPerMeasureII
    \addTicks 2 << #@(map part-III allParts) >> \ticksPerMeasureIII
  }
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
