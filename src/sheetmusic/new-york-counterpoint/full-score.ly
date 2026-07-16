% use auto-breaking when writing full score
break = {}
pageBreak = {}
autoPageBreaksOff = {}

% comment these lines out to remove the count-off measures
countOff = {
  \time 3/2
  R1.*2
  \bar "||"
}

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

\header {
  title      = "New York Counterpoint"
  composer   = "Steve Reich"
  arranger   = "Ed. Rey Abolofia"
  tagline    = #f
}

\layout {
  ragged-last = ##f
  \compressEmptyMeasures
  \clef treble
  \override MultiMeasureRest.expand-limit = #1
  \numericTimeSignature
}

\paper {
  print-all-headers = ##t
  system-system-spacing.basic-distance = #16
}

\markup \vspace #1  % extra space after title

addTicks =
#(define-music-function (m) (ly:music?)
  #{<<
    $m
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
  \layout {}
  \header {
    title      = "I"
    composer   = #f
    arranger   = #f
    instrument = #f
  }
  <<
    \addTicks
    \new Staff \with { instrumentName = "Live" } { \countOff \clarinet_Live }
    \new ChoirStaff <<
      \new Staff \with { instrumentName = "Cl.1" } { \countOff \clarinet_I }
      \new Staff \with { instrumentName = "Cl.2" } { \countOff \clarinet_II }
      \new Staff \with { instrumentName = "Cl.3" } { \countOff \clarinet_III }
    >>
    \new ChoirStaff <<
      \new Staff \with { instrumentName = "Cl.4" } { \countOff \clarinet_IV }
      \new Staff \with { instrumentName = "Cl.5" } { \countOff \clarinet_V }
      \new Staff \with { instrumentName = "Cl.6" } { \countOff \clarinet_VI }
    >>
    \new ChoirStaff <<
      \new Staff \with { instrumentName = "Cl.7" } { \countOff \clarinet_VII }
      \new Staff \with { instrumentName = "Bass Cl.8" } { \countOff \clarinet_VIII }
      \new Staff \with { instrumentName = "Bass Cl.9" } { \countOff \clarinet_IX }
      \new Staff \with { instrumentName = "Bass Cl.10" } { \countOff \clarinet_X }
    >>
  >>
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
