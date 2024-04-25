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

    \transpose c c' {
        \clef treble
        \key c \major

        \compressEmptyMeasures
        \override DynamicTextSpanner.style = #'none
        \set Score.rehearsalMarkFormatter = #format-mark-circle-numbers
        \set minimumBeamSubdivisionInterval = \musicLength 8
        \set subdivideBeams = ##t

        \time 3/4
        <<
            { }
            \new CueVoice {
                \set subdivideBeams = ##t
                r4 \tuplet 3/2 { bes16 ^"clar bass" [(c' bes c' bes8)] }
                \tuplet 3/2 { bes16 (c' bes c' bes8) }
            }
        >>

        \mark #5
        \time 2/4
        r4 b'32[ \mf \< (cis''32 c'' b' bes' a' aes' g']
        fis'16) r8. \! r4

        r4 b'32[ \mf \> (d''32 cis'' c'' b' bes' a' aes']
        \mark #6
        g'16) r8. \! r4

        r4 fis,32[ \f (a,32 e gis fis c'! e a,]

        <<
            {
                fis,8) r8 r4
            }
            \new CueVoice {
                r8 e,8 ^"clar bass" (fis,!32) [(a,32 e gis fis c'! e a,])
            }
        >>

        fis,32[(a,32 e gis fis c'! e a,] fis,16) r8.

        R2*7
        \mark #7
    }
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
