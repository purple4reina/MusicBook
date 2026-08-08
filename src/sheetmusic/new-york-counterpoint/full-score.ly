origBreak = \break
break = {}
pageBreak = {}
autoPageBreaksOff = {}

\include "music/clarinets.ly"

gitSha = #(let ((sha (getenv "GIT_SHA")))
            (if (or (not sha) (string-null? sha)) "unknown" sha))

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
      \new Devnull {
        $(mvt breaks)
      }
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

#(set-global-staff-size 14)

\paper {
  print-all-headers = ##t
  system-system-spacing.basic-distance = #16
  page-count = ##f
  #(set-paper-size "letter" 'landscape)

  oddHeaderMarkup = ##f
  evenHeaderMarkup = ##f
  oddFooterMarkup = \markup {
    \column {
      \fill-line {
        "" \if \should-print-page-number \fromproperty #'page:page-number-string
      }
      \fill-line {
        \if \on-last-page \right-align \tiny \concat { "rev " #gitSha }
      }
    }
  }
}

mvt = #(define-scheme-function (mvt part) (string? procedure?)
  #{
    \score {
      \header {
        title      = $mvt
        composer   = #f
        arranger   = #f
        instrument = #f
      }
      \ensemble $part
    }
  #})

\mvt "I" #part-I
\mvt "II" #part-II
\mvt "III" #part-III

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
