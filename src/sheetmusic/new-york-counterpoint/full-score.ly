\include "music/clarinet-live.ly"
\include "music/clarinet-01.ly"
\include "music/clarinet-02.ly"
\include "music/clarinet-03.ly"
\include "music/clarinet-04.ly"
\include "music/clarinet-05.ly"
%\include "music/clarinet-06.ly"
%\include "music/clarinet-07.ly"
%\include "music/clarinet-08.ly"
%\include "music/clarinet-09.ly"
%\include "music/clarinet-10.ly"

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

\score {
  \midi { \tempo 4 = 184 }
  \layout {}
  \header {
    title      = "I"
    composer   = #f
    arranger   = #f
    instrument = #f
  }
  <<
    \new Staff \with { instrumentName = "Live" } \clarinet_Live
    \new ChoirStaff <<
      \new Staff \with { instrumentName = "Cl.1" } \clarinet_I
      \new Staff \with { instrumentName = "Cl.2" } \clarinet_II
      \new Staff \with { instrumentName = "Cl.3" } \clarinet_III
    >>
    \new ChoirStaff <<
      \new Staff \with { instrumentName = "Cl.4" } \clarinet_IV
      \new Staff \with { instrumentName = "Cl.5" } \clarinet_V
      %\new Staff \with { instrumentName = "Cl.6" } \clarinet_VI
    >>
    \new ChoirStaff <<
      %\new Staff \with { instrumentName = "Cl.7" } \clarinet_VII
      %\new Staff \with { instrumentName = "Bass Cl.8" } \clarinet_VIII
      %\new Staff \with { instrumentName = "Bass Cl.9" } \clarinet_IX
      %\new Staff \with { instrumentName = "Bass Cl.10" } \clarinet_X
    >>
  >>
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
