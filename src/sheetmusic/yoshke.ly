\header {
    title      = "Yoshke yoshke (Tanz, yidelekh, tanz)"
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
    \transpose bes c''' {
        \key bes \major
        \time 2/4

        \repeat volta 2 {
            d16 es fis g a bes a g
            fis8 fis16 d g8 g
            a8 a c'16 bes a g
            fis8 fis16 d g4
            \break

            d16 es fis g a bes a g
            fis8 fis16 d g8 g
            fis8 fis es16 d es c
            d2
            \break
        }

        \repeat volta 2 {
            bes16 c' d'8 d' d'
            c'16 d' c' a f!4
            f16 g a bes c' d' es' c'
            d'2
            \break

            g16 a bes8 bes bes
            a16 bes a fis d4
            d16 es fis g a bes fis a
            g2
            \break
        }

        \repeat volta 2{
            d8 fis d fis
            g8 g c'16 bes a g
            fis8 fis g16 fis g bes
            a8 d' d' d'
            \break

            d8 fis d fis
            g8 g c'16 bes a g
            fis8 fis es16 d es c
            d2
        }
    }
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
