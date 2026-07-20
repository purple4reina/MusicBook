countOffMeasures = 2

\include "music/clarinets.ly"

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
  <<
    #(part-I clarinet_Live)
    #(part-I clarinet_I)
    #(part-I clarinet_II)
    #(part-I clarinet_III)
    #(part-I clarinet_IV)
    #(part-I clarinet_V)
    #(part-I clarinet_VI)
    #(part-I clarinet_VII)
    #(part-I clarinet_VIII)
    #(part-I clarinet_IX)
    #(part-I clarinet_X)
  >>
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
