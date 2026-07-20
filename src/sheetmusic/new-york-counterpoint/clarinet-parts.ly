\include "music/clarinets.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% update these to print parts %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinet_part = \clarinet_Live

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\header {
  title      = "New York Counterpoint"
  composer   = "Steve Reich"
  arranger   = "Ed. Rey Abolofia"
  instrument = #(part-name clarinet_part)
  tagline    = #f
}

\layout {
  indent = #0
  ragged-last = ##f
  \compressEmptyMeasures
  \clef treble
  \override MultiMeasureRest.expand-limit = #1
  \numericTimeSignature
  \context {
    \Staff
    \remove "Instrument_name_engraver"  % remove name from first line
  }
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
  \header {
    title      = "I"
    composer   = #f
    arranger   = #f
    instrument = #f
  }
  #(part-I clarinet_part)
}

\markup \vspace #1  % extra space after title

\score {
  \header {
    title      = "II"
    composer   = #f
    arranger   = #f
    instrument = #f
  }
  #(part-II clarinet_part)
}

\markup \vspace #1  % extra space after title

\score {
  \header {
    title      = "III"
    composer   = #f
    arranger   = #f
    instrument = #f
  }
  #(part-III clarinet_part)
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
