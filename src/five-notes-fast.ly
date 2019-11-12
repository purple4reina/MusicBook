\header{
    title = "Five Notes Fast"
    tagline = "Rey Abolofia -- 503.515.9787 -- purple4reina@gmail.com -- v1.0.0"
}

\paper {
    page-count = 1
}

\score {
    \layout {
        indent = #0
        ragged-last = ##f
        \context {
            \Score
            \override BarNumber.break-visibility = ##(#f #f #f)
        }
    }
    \header {
        piece = "Repeat each group 4 times, as fast as possible"
    }
    \relative {
        \key c \major

        \repeat volta 4 {
            e4 f fis g
            aes g ges f
        }
        e1

        \repeat volta 4 {
            f4 fis g gis
            a aes g ges
        }
        f1

        \break

        \repeat volta 4 {
            fis4 g gis a
            bes a aes g
        }
        fis1

        \repeat volta 4 {
            g4 gis a ais
            b bes a aes
        }
        g1

        \break

        \repeat volta 4 {
            gis4 a ais b
            c b bes a
        }
        gis1

        \repeat volta 4 {
            a4 ais b c
            des c b bes
        }
        a1

        \break

        \repeat volta 4 {
            ais4 b c cis
            d des c b
        }
        ais1

        \repeat volta 4 {
            b4 c cis d
            es d des c
        }
        b1

        \break

        \repeat volta 4 {
            c4 cis d dis
            e es d des
        }
        c1

        \repeat volta 4 {
            cis4 d dis e
            f e es d
        }
        cis1

        \break

        \repeat volta 4 {
            d4 dis e f
            ges f e es
        }
        d1

        \repeat volta 4 {
            dis4 e f fis
            g ges f e
        }
        dis1

        \break

        \repeat volta 4 {
            e4 f fis g
            aes g ges f
        }
        e1

        \repeat volta 4 {
            f4 fis g gis
            a aes g ges
        }
        f1

        \break

        \repeat volta 4 {
            fis4 g gis a
            bes a aes g
        }
        fis1

        \repeat volta 4 {
            g4 gis a ais
            b bes a aes
        }
        g1

        \break

        \repeat volta 4 {
            gis4 a ais b
            c b bes a
        }
        gis1

        \repeat volta 4 {
            a4 ais b c
            des c b bes
        }
        a1

        \break

        \repeat volta 4 {
            ais4 b c cis
            d des c b
        }
        ais1

        \repeat volta 4 {
            b4 c cis d
            es d des c
        }
        b1

        \bar "|."
    }
}

\version "2.16.2"  % necessary for upgrading to future LilyPond versions.
