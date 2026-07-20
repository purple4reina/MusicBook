% use auto-breaking when writing full score
break = {}
pageBreak = {}
autoPageBreaksOff = {}

\include "music/clarinets.ly"

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
      \new Staff \with { instrumentName = "Cl.6" } \clarinet_VI
    >>
    \new ChoirStaff <<
      \new Staff \with { instrumentName = "Cl.7" } \clarinet_VII
      \new Staff \with { instrumentName = "Bass Cl.8" } \clarinet_VIII
      \new Staff \with { instrumentName = "Bass Cl.9" } \clarinet_IX
      \new Staff \with { instrumentName = "Bass Cl.10" } \clarinet_X
    >>
  >>
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
