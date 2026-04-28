\include "common.ly"

\header {
  title      = "Lulu - Act II"
  composer   = "Alban Berg"
  instrument = "Clarint in Bb"
}

\paper {
  system-system-spacing = #'(
    (basic-distance   . 15)
    (minimum-distance .  8)
    (padding          .  3.5)
    (stretchability   . 60)
  )
}

\markup \vspace #1  % extra space after title

\score {
  \transpose c c' {
    \markBoxNum
    \numericTimeSignature 

    \key c \major
    \time 4/4

    \mark 670
    fis,16 (ais, b, gis, cis dis c d f! e a,) g, ~g, bes, (aes, des
    es d! e a,! ~a, g,) bes, (aes, des es d8 e16 a, g,8
    ~g,16) bes, (aes, des es d e a, g,8) bes,! (aes, des16 es
    ~es16 d! e a,! ~a,8 g,) bes,16 (aes, des es ~es8 d16 e
    a,!16 g,8) bes,16 (~bes,8 aes, ~aes,16 des8 es16 des es d e
    \mark 675
    a,!16-.) a,-. a,-. a,-. a,-. a,-. a,-. a,-. a,-. f (es f e fis ais, dis
    ~dis16) f! (es f e fis b,!-.) b,-. b,-. b,-. b,-. b,-. b,-. b,-. g (f
    g16 ges aes des f!8) g16 (f g ges aes! des!-.) des-. des-. des-. des-.
    des16-. des-. des-. des ~ des2 ~des8 r
    r16 f'-> es'-> f'-> ges'8-> ([aes' bes' c'' e''! cis'' ~]
    \mark 680
    {
      \override BreathingSign.Y-offset = #7.5
      cis''16) d'' g''! b''! \breathe
      \tuplet 6/4 { cis'''16 (bes'' g'' e''! cis''! bes' }
      \tuplet 6/4 { g'!16 e' cis' bes g e }
      \tuplet 3/2 { cis16 [bes, g,] }
      e,16) r
    }
    r16 e, (g, bes, cis e g bes cis' e' g' bes' \t{ g'8 e' cis' }
    \t{ bes8 g e } \t{ cis e g } bes8 [cis' e' cis']
    bes8 g e cis bes, g,) r4
  }
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
