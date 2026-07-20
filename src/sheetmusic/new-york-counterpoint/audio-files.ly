countOffMeasures = 2

\include "music/clarinets.ly"

allParts = #(list clarinet_Live clarinet_I clarinet_II clarinet_III clarinet_IV
                   clarinet_V clarinet_VI clarinet_VII clarinet_VIII clarinet_IX
                   clarinet_X)

addTicks =
#(define-music-function (m) (ly:music?)
  #{<<
    \new Staff {
      \time 3/2
      \transposition bes
      <>\ff <c' c''>1. <c' c''>1.
      R1.*\countOffMeasures $m
    }
    \new Devnull \with {
      \consists Drum_note_performer
      \consists Staff_performer
      \consists Dynamic_performer
      midiInstrument = #"woodblock"
    } \drummode {
      <>\ff \repeat unfold
      $(ly:moment-main-numerator
        (ly:moment-div
         (ly:music-length m)
         (ly:make-moment 1 2)))
      rb2
    }
  >>#}
)

\score {
  \midi { \tempo 4 = 176 }  % tempo in score is 184
  \addTicks
  << #@(map part-I allParts) >>
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
