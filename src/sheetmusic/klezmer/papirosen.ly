\header {
    title      = "Papa Rosen"
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
    \transpose d fis' {
        \key d \minor
        \time 4/4

        \partial 8 d8
        \repeat volta 2 {
            d8 f f a a d' d' f'
            f'8 e' e' d' a4. r8

            f'8 e' e' d' d' c' c' bes
            bes8 a a bes g4 r8 g

            g8 a a e' e' d' d' cis'
            cis'8 bes bes a a g g f

            \alternative {
                \volta 1 {
                    f8 g g f a g f g
                    a2 r4 r8 d
                }
                \volta 2 {
                    f8 g g f a g f e
                    d2 r8 a d' e'
                    \bar "||"
                }
            }
        }

        \repeat volta 2 {
            f'4. e'8 f' e' d' cis'
            d'4 a2 r8 d'
            d'8 cis' d' cis' d' c' bes a

            a8 (bes) g2 r8 g
            g8 a a e' e' d' d' cis'
            cis'8 bes bes a a g g f

            \alternative {
                \volta 1 {
                    f8 g g f a g f g
                    a2 r8 a d' e'
                }
                \volta 2 {
                    f8 g g f a g f e
                    d2 r4 r8 d
                    \bar "|."
                }
            }
        }
    }
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
