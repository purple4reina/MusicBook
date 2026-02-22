%%%%%%%%%%%%%%%%%%%
% COMMON SETTINGS %
%%%%%%%%%%%%%%%%%%%

\header {
  tagline = #(
    strftime "transcribed by Rey Abolofia, %h %Y" (localtime (current-time))
  )
}

\layout {
  indent = #0
  ragged-last = ##f
  \compressEmptyMeasures
  \clef treble
}

%%%%%%%%%%
% MACROS %
%%%%%%%%%%

txtUp =
#(define-music-function
  (text)
  (string?)
  #{
    ^\markup { \italic #text }
  #}
)

txtDown =
#(define-music-function
  (text)
  (string?)
  #{
    _\markup { \italic #text }
  #}
)

markBoxNum = \set Score.rehearsalMarkFormatter = \format-mark-box-numbers

t = \tuplet 3/2 \etc

tremolo = \repeat tremolo \etc

fermataBar = {
  \once \set Staff.caesuraType = #'((underlying-bar-line . "||"))
  \once \set Staff.caesuraTypeTransform = ##f
  \bar "||"
  \caesura \fermata
}
