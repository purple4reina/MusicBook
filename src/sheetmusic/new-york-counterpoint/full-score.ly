% use auto-breaking when writing full score
break = {}
pageBreak = {}
autoPageBreaksOff = {}

\include "music/clarinets.ly"

ensemble =
#(define-music-function (mvt) (procedure?)
  #{
    <<
      $(mvt clarinet_Live)
      \new ChoirStaff <<
        $(mvt clarinet_I)
        $(mvt clarinet_II)
        $(mvt clarinet_III)
      >>
      \new ChoirStaff <<
        $(mvt clarinet_IV)
        $(mvt clarinet_V)
        $(mvt clarinet_VI)
      >>
      \new ChoirStaff <<
        $(mvt clarinet_VII)
        $(mvt clarinet_VIII)
        $(mvt clarinet_IX)
        $(mvt clarinet_X)
      >>
    >>
  #})

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
  \ensemble #part-I
}

\score {
  \header {
    title      = "II"
    composer   = #f
    arranger   = #f
    instrument = #f
  }
  \ensemble #part-II
}

\score {
  \header {
    title      = "III"
    composer   = #f
    arranger   = #f
    instrument = #f
  }
  \ensemble #part-III
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
