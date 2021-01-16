\header{
    title = "Klose Scales"
    tagline = "Rey Abolofia -- 503.515.9787 -- purple4reina@gmail.com -- v1.0.1"
}

\paper {
    page-count = 2
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
    \relative {
        \key c \major
        % c major
        c'8 \mark "C Major" d16 e f g a b c8 d16 e f g a b c8 b16 a g f e d c b a g f e d c \break
        % a minor
        a8 \mark "A Minor" b16 c d e fis gis a8 b16 c d e fis gis a8 g?16 f? e d c b a g f e d c b a \break
        % f major
        f8 \mark "F Major" g16 a bes c d e f8 g16 a bes c d e f8 c'16 bes a g f e d c bes a g f e f \break
        % d minor
        d8 \mark "D Minor" e16 f g a b cis d8 e16 f g a b cis d8 c?16 bes a g f e d c bes a g f e d \break
        % b-flat major
        bes8 \mark "B-flat Major" c16 d es f g a bes8 c16 d es f g a bes8 a16 g f es d c bes a g f es d c bes \break
        % g minor
        g8 \mark "G Minor" a16 bes c d e fis g8 a16 bes c d e fis g8 d'16 c bes a g f es d c bes a g fis g \break
        % e-flat major
        es8 \mark "E-flat Major" f16 g aes bes c d es8 f16 g aes bes c d es8 d16 c bes aes g f es d c bes aes g f es \break
        % c minor
        c8 \mark "C Minor" d16 es f g a b c8 d16 es f g a b c8 bes16 aes g f es d c bes aes g f es d c \break
        % a-flat major
        aes8 \mark "A-flat Major" bes16 c des es f g aes8 bes16 c des es f g aes8 g16 f es des c bes aes g f es des c bes aes \break
        % f minor
        f8 \mark "F Minor" g16 aes bes c d e f8 g16 aes bes c d e f8 c'16 bes aes g f es des c bes aes g f e? f \break
        % d-flat major
        des8 \mark "D-flat Major" es16 f ges aes bes c des8 es16 f ges aes bes c des8 c16 bes aes ges f es des c bes aes ges f es des \break
        % b-flat minor
        bes8 \mark "B-flat Minor" c16 des es f g a bes8 c16 des es f g a bes8 aes16 ges f es des c bes aes ges f es des c bes \break
        % g-flat major
        ges8 \mark "G-flat Major" aes16 bes ces des es f ges8 aes16 bes ces des es f ges8 des'16 ces bes aes ges! f es des ces bes aes ges f ges? \break
        % e-flat minor
        es8 \mark "E-flat Minor" f16 ges aes bes c d es8 f16 ges aes bes c d es8 des16 ces bes aes ges f es des ces bes aes ges f es \break
        % b major
        b8 \mark "B Major" cis16 dis e fis gis ais b8 cis16 dis e fis gis ais b8 ais16 gis fis e dis cis b ais gis fis e dis cis b \break
        % g-sharp minor
        gis8 \mark "G-sharp Minor" ais16 b cis dis eis fisis gis8 ais16 b cis dis eis fisis gis8 fis16 e? dis cis b ais gis fis e dis cis b ais gis \break
        % e major
        e8 \mark "E Major" fis16 gis a b cis dis e8 fis16 gis a b cis dis e8 b'16 a gis fis e dis cis b a gis fis e dis e \break
        % c-sharp minor
        cis8 \mark "C-sharp Minor" dis16 e fis gis ais bis cis8 dis16 e fis gis ais bis cis8 b?16 a? gis fis e dis cis b a gis fis e dis cis \break
        % a major
        a8 \mark "A Major" b16 cis d e fis gis a8 b16 cis d e fis gis a8 gis16 fis e d cis b a gis fis e d cis b a \break
        % f-sharp minor
        fis8 \mark "F-sharp Minor" gis16 a b cis dis eis fis8 gis16 a b cis dis eis fis8 cis'16 b a gis fis? e d cis b a gis fis eis fis? \break
        % d major
        d8 \mark "D Major" e16 fis g a b cis d8 e16 fis g a b cis d8 cis16 b a g fis e d cis b a g fis e d \break
        % b minor
        b8 \mark "B Minor" cis16 d e fis gis ais b8 cis16 d e fis gis ais b8 a?16 g? fis e d cis b a g fis e d cis b \break
        % g major
        g8 \mark "G Major" a16 b c d e fis g8 a16 b c d e fis g8 fis16 e d c b a g fis e d c b a g \break
        % e minor
        e8 \mark "E Minor" fis16 g a b cis dis e8 fis16 g a b cis dis e8 b'16 a g fis e d c b a g fis e dis e \break
        % c major
        c8 \mark "C Major" d16 e f g a b c8 d16 e f g a b c8 b16 a g f e d c b a g f e d c c1
        \bar "|."
    }
}

\version "2.16.2"  % necessary for upgrading to future LilyPond versions.
