\header {
    title      = "Roumanian Hora"
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
        \time 3/8

        \repeat volta 2 {
            gis8. a16 b a
            gis8. f16 e d
            a8 r a
            a8. d16 f a
            d'8. c'16 b a
            \break

            gis8. f16 e d
            a8 r a
            a8 r a
            gis8. a16 b a
            gis8. f16 e d
            g8 g g
            \break

            bes4.
            a8. d16 f a
            gis8. f16 e f

            \alternative {
                \volta 1 {
                    d8. d'16 a f
                    d8 r a
                }
                \volta 2 {
                    d8. d'16 a f
                    \break
                }
            }
        }

        d8 r a,

        \repeat volta 2 {
            d4.
            (d4.)
            f8 f e16 d
            f8 f e16 d
            cis4. (
            \break

            c4.)
            a,8 bes, cis16 d
            e8 f gis16 a
            d4 a8
            gis8. f16 e d
            f8 f e16 d
            \break

            f8 f e16 d
            g4.
            bes4.
            a8. d16 f a
            gis8. f16 e f

            \alternative {
                \volta 1 {
                    d8. d'16 a f
                    \break
                    d4 a,8
                }
                \volta 2 {
                    d4 r8
                    \bar "|."
                }
            }
        }
    }
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
