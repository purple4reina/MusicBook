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
