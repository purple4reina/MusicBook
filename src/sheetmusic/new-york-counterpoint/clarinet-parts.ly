\include "music/clarinets.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% update these to print parts %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinet_part = \clarinet_X
instrument    = "Bass Clarinet X in B♭"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\header {
  title      = "New York Counterpoint"
  composer   = "Steve Reich"
  arranger   = "Ed. Rey Abolofia"
  instrument = \instrument
  tagline    = #f
}

\layout {
  indent = #0
  ragged-last = ##f
  \compressEmptyMeasures
  \clef treble
  \override MultiMeasureRest.expand-limit = #1
  \numericTimeSignature
}

\paper {
  print-all-headers = ##t
  system-system-spacing.basic-distance = #16
  left-margin = #10
  right-margin = #10
  top-margin = #5
  bottom-margin = #5
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
  \clarinet_part
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
