\header {
    title      = "The Rite of Spring"
    composer   = "Igor Stravinsky"
    instrument = "Bass Clarinet"
    copyright  = #(strftime "transcribed by Rey Abolofia, %h %Y" (localtime (current-time)))
    tagline    = ##f
}

\layout {
    indent = #0
    ragged-last = ##f
    \context {
        \Score
        \omit BarNumber
    }
}

\paper {
    print-all-headers = ##t
}

\markup \vspace #1  % extra space after title

\score {
    \header {
        title      = ""
        piece      = "L'Adoration de la Terre"
        composer   = ""
        instrument = ""
    }

    \transpose c c {
        \clef treble
        \key c \major
        \time 3/4

        \set Score.rehearsalMarkFormatter = #format-mark-circle-numbers
        \set minimumBeamSubdivisionInterval = \musicLength 8

        \mark #11
        r4 r \tuplet 3/2 { r8 \grace e (fis) \grace e (fis) }

        r8 fis32(a32 e' gis' fis' c'' e' a fis8-.)
        \tuplet 3/2 { r8 \grace e (fis) fis }

        \set subdivideBeams = ##f
        \grace e8 (fis16) fis fis fis
        \set subdivideBeams = ##t
        fis32[(a32 e' gis' fis' c'' e' a)]
        fis32[(a32 e' gis' fis' c'' e' a]

        \time 2/4
        fis8) fis32(a32 e' gis' fis' c'' e' a fis8-.)

        \mark #12
        r4 \fermata r
    }
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
