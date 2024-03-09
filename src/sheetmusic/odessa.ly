\header {
    title      = "Odessa Bulgarish"
    composer   = "Traditional"
    instrument = "Bb instruments"
    copyright  = #(strftime "transcribed by Rey Abolofia, %h %Y" (localtime (current-time)))
    tagline    = ##f
}

\layout {
    indent = #0
    ragged-last = ##f
}

\markup \vspace #2 % extra space after title

\score {
    \transpose bes c'' {
        \key d \minor
        \time 2/4
        \tempo 4 = 100-110

        r8 a, [d f]
        \repeat volta 2 {
            \mark #1 \set Score.rehearsalMarkFormatter = #format-mark-circle-letters
            a4 \segno gis
            a4 b
            c'4 b
            a8 gis f4
            gis16 b a8 a a
            \break

            a8 [gis f gis]
            a8 [b a gis]
            f8 [e f gis]
            a4 gis
            a4 b
            c'4 b
            a8 gis f4
            \break

            e8 f a16 gis f8
            gis4 a
            d4. a8
            a16 gis f8 f4
            e8 f a16 gis f8
            gis4 a
            \break

            \alternative {
                \volta 1 {
                    d2 \bar "||"
                    \fine
                    r8 a,8 [d f]
                }
                \volta 2 {
                    d2 (
                }
            }
        }

        d2)

        \repeat volta 2 {
            \mark #2 \set Score.rehearsalMarkFormatter = #format-mark-circle-letters
            r8 d' [d' d']
            d'8 [d' d' d']
            d'8 [c' b d']
            \break

            c'8 [bes a c']
            bes8 [a gis bes]
            a8 gis f4
            e8 f a16 gis f8
            gis4 a
            d4. a8
            \break

            a16 gis f8 f4
            e8 f a16 gis f8
            gis4 a
            d2
            (d2)
        }

        \repeat volta 2 {
            d8 d4 a8
            a16 gis f8 f4
            \break

            f16 e d8 e f
            gis8 a f16 e d8
            d8 d4 a8
            a16 gis f8 f4
            e8 [d e f]
            e8 d4.
            -\markup { \italic "D.S." }
        }
    }
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
