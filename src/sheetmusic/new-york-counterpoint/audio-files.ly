countOffMeasures = 2
baseTempo = 88  % score says 92

\include "music/clarinets.ly"

allParts = #(list clarinet_Live clarinet_I clarinet_II clarinet_III clarinet_IV
                   clarinet_V clarinet_VI clarinet_VII clarinet_VIII clarinet_IX
                   clarinet_X)

addTicks = #(
  define-music-function
    (duration music)
    (number? ly:music?)
  (
    let ((tickDuration (ly:make-duration (ly:intlog2 duration) 0 1)))
    #{
      \tempo $tickDuration = \baseTempo
      <<
        $music
        \new Devnull \with {
          \consists Drum_note_performer
          \consists Staff_performer
          \consists Dynamic_performer
          midiInstrument = #"woodblock"
        } \drummode {
          <>\ff \repeat unfold
          $(ly:moment-main-numerator
            (ly:moment-div
             (ly:music-length music)
             (ly:make-moment 1 duration)))
          rb$tickDuration
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
    \addTicks 2 << \countOff >>
    \addTicks 2 << #@(map part-I allParts) >>
    \addTicks 4 << #@(map part-II allParts) >>
    \addTicks 2 << #@(map part-III allParts) >>
  }
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
