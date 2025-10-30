\header {
  title      = "TITLE"
  composer   = "COMPOSER"
  instrument = "Clarinet"
  copyright  = #(strftime "transcribed by Rey Abolofia, %h %Y" (localtime (current-time)))
  tagline    = ##f
}

\layout {
  indent = #0
  ragged-last = ##f
  \context {
    \Score
    \omit BarNumber
    \override Hairpin.to-barline = ##f
  }
}

\markup \vspace #1  % extra space after title

\score {
  \transpose c c' {
    \compressEmptyMeasures
    \clef treble
    \key c \major
  }
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
