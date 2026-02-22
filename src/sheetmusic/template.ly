\include "common.ly"

\header {
  title      = "TITLE"
  composer   = "COMPOSER"
  instrument = "INSTRUMENT"
}

\markup \vspace #1  % extra space after title

\score {
  \transpose c c' {
    \key c \major

    a b c' d'
    R1*6
  }
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
