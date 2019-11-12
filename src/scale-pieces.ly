\header{
    title = "Scale Pieces"
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
            e4 fis gis a
            b a gis fis
        }
        e1

        \repeat volta 4 {
            f4 g a bes
            c bes a g
        }
        f1

        \break

        \repeat volta 4 {
            fis4 gis ais b
            cis b ais gis
        }
        fis1

        \repeat volta 4 {
            g4 a b c
            d c b a
        }
        g1

        \break

        \repeat volta 4 {
            aes4 bes c des
            es des c bes
        }
        aes1

        \repeat volta 4 {
            a4 b cis d
            e d cis b
        }
        a1

        \break

        \repeat volta 4 {
            bes4 c d es
            f es d c
        }
        bes1

        \repeat volta 4 {
            b4 cis dis e
            fis e dis cis
        }
        b1

        \break

        \repeat volta 4 {
            c4 d e f
            g f e d
        }
        c1

        \repeat volta 4 {
            des4 es f ges
            aes ges f es
        }
        des1

        \break

        \repeat volta 4 {
            d4 e fis g
            a g fis e
        }
        d1

        \repeat volta 4 {
            es4 f g aes
            bes aes g f
        }
        es1

        \break

        \repeat volta 4 {
            e4 fis gis a
            b a gis fis
        }
        e1

        \repeat volta 4 {
            f4 g a bes
            c bes a g
        }
        f1

        \break

        \repeat volta 4 {
            fis4 gis ais b
            cis b ais gis
        }
        fis1

        \repeat volta 4 {
            g4 a b c
            d c b a
        }
        g1

        \break

        \repeat volta 4 {
            aes4 bes c des
            es des c bes
        }
        aes1

        \repeat volta 4 {
            a4 b cis d
            e d cis b
        }
        a1

        \break

        \repeat volta 4 {
            bes4 c d es
            f es d c
        }
        bes1

        \repeat volta 4 {
            b4 cis dis e
            fis e dis cis
        }
        b1

        \bar "|."
    }
}

\version "2.16.2"  % necessary for upgrading to future LilyPond versions.
