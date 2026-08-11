\include "music/clarinets.ly"

gitSha = #(let ((sha (getenv "GIT_SHA")))
            (if (or (not sha) (string-null? sha)) "unknown" sha))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% update these to print parts %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clarinet_part = \clarinet_Live

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% ...or leave the above alone and pick a part on the command line:
%%%   lilypond clarinet-parts.ly -dpart=live
%%%   lilypond clarinet-parts.ly -dpart=1
%%%   lilypond clarinet-parts.ly -dpart=01
%%% lilypond warns "no such internal option: part" -- harmless, it still
%%% hands the value over

#(define clarinet-part-alist
   `(("live" . ,clarinet_Live)
     ("1"    . ,clarinet_I)
     ("2"    . ,clarinet_II)
     ("3"    . ,clarinet_III)
     ("4"    . ,clarinet_IV)
     ("5"    . ,clarinet_V)
     ("6"    . ,clarinet_VI)
     ("7"    . ,clarinet_VII)
     ("8"    . ,clarinet_VIII)
     ("9"    . ,clarinet_IX)
     ("10"   . ,clarinet_X)))

% -dpart=live arrives as a symbol and -dpart=01 as the number 1, so flatten
% whatever turns up to a string before looking it up
#(define (normalize-part-name value)
   (string-downcase (format #f "~a" value)))

% without -dpart the option is #f, which leaves the part chosen above alone
clarinet_part =
#(let* ((requested (ly:get-option 'part))
        (chosen (if (not requested)
                    clarinet_part
                    (let ((found (assoc (normalize-part-name requested)
                                        clarinet-part-alist)))
                      (if (not found)
                          (ly:error "unknown part ~a -- expected one of: ~a"
                                    requested
                                    (string-join (map car clarinet-part-alist)
                                                 ", ")))
                      (cdr found)))))
   (ly:message "printing part: ~a" (part-name chosen))
   chosen)

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
  system-system-spacing.basic-distance = #14
  ragged-last-bottom = ##f
  left-margin = #10
  right-margin = #10
  top-margin = #5
  bottom-margin = #5

  oddFooterMarkup = \markup {
    \column {
      \fill-line {
        \if \on-first-page-of-part \fromproperty #'header:copyright
      }
      \fill-line {
        \if \on-last-page \right-align \tiny \concat { "rev " #gitSha }
      }
    }
  }
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
