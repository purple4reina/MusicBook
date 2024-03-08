\header {
    title      = "Firn di Mekhutonim aheym"
    composer   = "Naftule Brandwein"
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
    \transpose bes c''' {
        \key c #`(
            (6 . ,FLAT)
            (2 . ,FLAT)
            (3 . ,SHARP))
        \time 3/8

        \repeat volta 2 {
            \partial 8 d16 d
            fis!4 \tuplet 3/2 { es16 d c }
            d4.
            (d8) bes a
            g4.
            g4 \tuplet 3/2 { es16 d c }
            c4.
            c8 a g
            \break

            fis4 \tuplet 3/2 { es16 d c }
            d8. fis16 a g
            fis8. a16 c' bes
            a8. c'16 es' d'
            c'8. bes16 a g
            fis8. g16 a g
            \break

            fis8. es16 d c
            d8. d'16 a fis
            d8 r
        }

        \repeat volta 2 {
            d16 d
            d8 bes a
            g8. d16 g d
            g4.
            (g4.)
            \break

            g8 es' d'
            c'8. g16 c' g
            c'4.
            (c'8.) bes16 bes a
            a16 c' c' bes bes a
            a16 c' c' bes bes a
            a4.
            (\break

            a8.) bes16 a g
            fis16 a a g g fis
            fis16 a a g g fis
            fis4.
            (fis8.) es16 d c
            d8. fis16 a g
            \break

            fis8. a16 c' bes
            a8. c'16 es' d'
            c'8. bes16 a g
            fis8. g16 a g
            fis8. es16 d c
            d8. d'16 a fis
            d8 r
            \break
        }

        \repeat volta 2 {
            d16 d
            d'4.
            (d'4.)
            (d'4.)
            (d'4) c'8
            bes4.
            (bes4) a8
            g4.
            (g4) fis8
            es4.

            (es4) d8
            c4.
            (c4.)
            a4 a8
            a4 \tuplet 3/2 { bes16 a g }
            fis4 fis8
            fis4 \tuplet 3/2 { es16 d c }
            d8. fis16 a g
            \break

            fis8. a16 c' bes
            a8. c'16 es' d'
            c'8. bes16 a g

            fis8. g16 a g
            fis8. es16 d c
            d8. d'16 a fis
            d8 r
        }
    }
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
