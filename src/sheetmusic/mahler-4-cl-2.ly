\include "common.ly"

\header {
  title      = "Symphony No. 4 in G Major"
  composer   = "Gustav Mahler"
  instrument = "Clarinet 2"
}

\layout {
  ragged-last = ##t
  \context {
    \Score
    \omit BarNumber
  }
}

\markup \vspace #1  % extra space after title

\score {
  \layout {
    indent = #90
    ragged-last = ##f
  }
  \transpose c c' {
    \key c \major
    \time 4/4
    \markNum
    \override Score.SpacingSpanner.spacing-increment = 0.25
    \set Staff.instrumentName = \markup \bold "                                                               In Bb"

    \mark 11
    R1*9
    \bar "||"
    \key b \major
    r2 r4 r8. \tuplet 3/2 { f32 (a d') }

    \break

    f'8. \f [e'16 d'8. cis'16] b8. \> cis'16 d'4
    ~d'8 \p r r4 r2
    R1
    \bar "||"
    \mark 12
    \transpose bes c' {
      \key ges \major
      R1*4
      fes'8-> \p [(es'-.)] fes'-> [(es'-.)] fes'8-> [(es'-.)] fes'-> [(es'-.)]
      R1

      \break

      r2 r8 aes16 \ff (bes ces'! bes aes bes)
      d2. \fp r8 \tuplet 3/2 { fis'16 \p (a' d'' }
      fis''8) r r4 r2
      R1
      r4 r8 b,16 \ff (cis d cis b, cis f,!8-.) f,-.
      f,2. r4
    }

    \bar "||"
    \mark 13
    \key bes \major
    s
  }
}

\score {
  \layout {
    indent = #40
  }
  \transpose c c' {
    \markNum
    \override Score.SpacingSpanner.spacing-increment = 0.20
    \override Hairpin.to-barline = ##f
    \set Staff.instrumentName = \markup \bold "                                                               In Bb"

    \key bes \major
    \time 4/4

    \mark 15
    r2 r8 f8-. \p f-. f-.
    g8-.  g-.  g-.  g-.  g-.  g-.  g-.  g-.
    bes8-.  bes8-.  bes8-.  bes8-.  b-.  b-.  b-.  b-.
    c'8-.  c'8-.  c'8-.  c'8-. r dis'16 \< (e' f' e' dis' e') \!

    \break

    c''8 \f \> [(b'16-.) r b'8-. b'-.] \! b'-. \> [(bes'16-.) r bes'8 bes'] \!
    bes'4 \> (a'4) \! \breathe r8 dis'16 \p (e' \< f' e' c' \> a) \!
    R1*2
    d''4-- \pp d''-- d''-- r
    R1
    c''4-- \pp c''-- c''-- r
    R1

    \break

    c''4-- \pp c''-- c''-- r
    c1 \f \<
    (b,1) \>
    c''4-- \pp c''-- c''-- r
    des'1 \f
    \bar "||"
    \mark 16
    \key d \major
    r2 r8 gis'16 \ff (a' b' a' gis' a')
    a'4-> a'-> r8 gis'16 (a' b' a' gis' a')

    \break

    a'2-> r8 gis'16 (a' b' a' gis' a')
    a'4-> a'-> r8 gis'16 (a' b' a' gis' a')
    a'2-> r8 gis'16 (a' b' a' gis' a')
    d''4-> d''-> d''-> r8 b'32 (a' gis' a')
    d''4-> d''-> d''-> r8 a'-.

    \break

    d'4-> a'-> fis'8. e'16 d'8-. a
    (d'8-.) d'-. a'-. a'-. fis'4 (d'8-.) a-.
    fis'8-> e'16 fis' g'8-> fis'16 e' d'4.-> a8-.
    fis'8-> e'16 fis' g'8-> fis'16 e' d'4.-> a8-.
    fis'8-> (e'16 d' a8-.) d'16 (e' fis'8-> e'16 d' a8-.) r

    \break

    \mark 17
    cis''16 \ff (d'' cis'' d'' cis'' d'' cis'') a' (bes' a' bes' a' bes') fis' (g' fis'
    g'16 fis' g') d' (es' d' es' d' es') b (bes b bes a bes) r
  }
}

\score {
  \layout {
    indent = #40
    ragged-last = ##f
  }
  \transpose c c' {
    \key a \major
    \time 4/4
    \markNum
    \override Score.SpacingSpanner.spacing-increment = 0.20
    \set Staff.instrumentName = \markup \bold "                                                               In Bb"

    \mark 24
    R1*11
    \fermataBar
    R1*3 ^\markup { \italic "a tempo" }
    r2 cis8. \p [d16 e8. \txtDown "cresc" fis16]
    gis8. [a16 b8. cis'16] d'8. [e'16 fis'8. gis'16]

    \break

    a'8 ^"Allegro" r r4 r r8 e-. \ff
    cis'16 e' cis' a b d' b gis a4-- e8-. e-.
    cis'16 e' cis' a d'4-> cis'16 e' cis' a d'4->
    cis'8-. r cis-. r cis-. r r4
    \bar "|."
  }
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
