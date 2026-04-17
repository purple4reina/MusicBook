\include "common.ly"

\header {
  title      = "Der Rosenkavalier"
  subtitle   = "Act III"
  composer   = "R. Strauss"
  instrument = "Clarinet in Bb"
}

\markup \vspace #1  % extra space after title

\score {
  \layout {
    indent = #45
    ragged-last = ##t
  }
  \transpose bes, c' {
    \markBoxNum

    \key f \major
    \time 2/4
    \tempo "Prestissimo" 2 = 80

    \mark 156
    r4 r8 d16 \f (e
    cis16 d e f g f \> a g
    bes16 \p c' des' c' bes c' cis' d'
    e'16) r r8 r4

    \break

    r8 d16 \f (e cis d e f
    g16 \p \> f a g bes8) \! r
    r4 g16 \f (bes d' g'
    f'16 \p e' d' f' e' d' cis' e'
    d'16 e' f' e' d' c' bes a
    bes16 c' d' c' bes a g f

    \break

    e8) r r4
    R2*1
    \mark 157
    gis,16 \pp (a, bes, a, gis, a, bes, a,
    gis,16 a, bes, a, gis,8) r
    R2*1
    r4 bes'16 \f (a' fis' dis'
    bes16 a fis dis bes,) \! r r8

    \break

    \mark 158
    r8 g,16 \p (aes, f, g, aes, bes,
    c16 bes, d c es f g f
    es4 ~es16 g bes g'
    es'16) \! r r8 bes'16 \p (a' fis' dis'
    bes16 a fis dis bes,) \! r r8

    \break

    dis'16 \p \< (e' cis'' bes' g' \> e' cis' bes \!
    g16 e cis bes, g,) r r8
    \mark 159
    gis,16 \p (a, bes, a, gis, a, bes, cis
    d16 cis e d f e g f
    a16 b cis' d' e' f' g' a') \!
    R2*3

    \break

    c16 \p (d es d c d es f
    fis16 e! g fis a g bes a
    c' d' es' f' g' a' bes' c'') \!
    \mark 160
    r4 \acciaccatura { c''8 } (bes'16 \mf (a' bes' es''
    f'4) \! \acciaccatura { g'8 } f'16 \< (e'! f' bes' \!

    \break

    bes8. \f aes16 g8 bes16 aes
    g8) f-. es-. d-.
    cis8-. r r4
  }
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
