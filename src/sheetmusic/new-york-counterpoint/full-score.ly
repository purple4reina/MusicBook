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
    #(part-I clarinet_Live)
    \new ChoirStaff <<
      #(part-I clarinet_I)
      #(part-I clarinet_II)
      #(part-I clarinet_III)
    >>
    \new ChoirStaff <<
      #(part-I clarinet_IV)
      #(part-I clarinet_V)
      #(part-I clarinet_VI)
    >>
    \new ChoirStaff <<
      #(part-I clarinet_VII)
      #(part-I clarinet_VIII)
      #(part-I clarinet_IX)
      #(part-I clarinet_X)
    >>
  >>
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
