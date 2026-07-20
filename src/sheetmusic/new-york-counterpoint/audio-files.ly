countOffMeasures = 2

\include "music/clarinet-live.ly"
\include "music/clarinet-01.ly"
\include "music/clarinet-02.ly"
\include "music/clarinet-03.ly"
\include "music/clarinet-04.ly"
\include "music/clarinet-05.ly"
\include "music/clarinet-06.ly"
\include "music/clarinet-07.ly"
\include "music/clarinet-08.ly"
\include "music/clarinet-09.ly"
\include "music/clarinet-10.ly"

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
    \new Staff \clarinet_Live
    \new Staff \clarinet_I
    \new Staff \clarinet_II
    \new Staff \clarinet_III
    \new Staff \clarinet_IV
    \new Staff \clarinet_V
    \new Staff \clarinet_VI
    \new Staff \clarinet_VII
    \new Staff \clarinet_VIII
    \new Staff \clarinet_IX
    \new Staff \clarinet_X
  >>
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
