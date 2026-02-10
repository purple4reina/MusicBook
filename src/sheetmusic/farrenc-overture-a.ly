\header {
  title      = "Première Ouverture à Grand orchestre"
  composer   = "Louise Farrenc (1804–1875)"
  instrument = "Clarinet I in A"
  copyright  = #(strftime "transcribed by Rey Abolofia, %h %Y" (localtime (current-time)))
  tagline    = ##f
}

\layout {
  indent = #0
  ragged-last = ##f
  \context {
    \Score
    \override Hairpin.to-barline = ##f
  }
}

\markup \vspace #1  % extra space after title

showBarNumber = \once {
  \override Score.BarNumber.break-visibility = #all-visible
  \override Score.BarNumber.direction = #DOWN
}

\score {
  \transpose a c'' {
    \compressEmptyMeasures
    \clef treble
    \key e \major
    \time 3/4

    R2.*2
    a2 \f gis4
    b2 a4
    b2 cis'4
    b2 \> dis'4
    e'4 \p r r
    R2.*2
    dis'2. \p
    (cis'4) r r
    r8 e' (dis' cis' b a)
    gis4 (a fis)

    \break  % 14

    e'2. \f
    e'2.
    e'2.
    e'2.
    e'2.
    e'2.
    e'2.
    e'2. ^\markup{ \bold calando } (
    \once \override Hairpin.shorten-pair = #'(0 . 8)
    dis'2.) \> <>\!

    \bar "||"
    \break  % 23
    \key e \minor
    \time 2/2

    R1*4 ^\markup { \bold "Allegro agitato" }
    r2 fis \p
    (g1)
    b1
    (b2) r
    R1*7
    \mark \default \showBarNumber  % A 38
    R1*2
    a'1 \f
    (a'1)
    g'4 r r2
    r1
    gis'1
    ~gis'1
    a'2 g'!
    fis'2 e'

    \break  % 48

    dis'4 r r2
    e'1
    ~e'1
    ~e'1
    ~e'2 r
    d'1
    g1
    e'1
    a1
    g2 a4 bes

    \break  % 58

    a2 d'2
    ~d'2 cis'
    d'1
    g2 a4 bes
    a4 d cis d
    e4 \< fis g a
    bes4 a g a
    bes4 b c' cis'
    d'4 \ff a'2 a'4 ~

    \break  % 67

    a'4 a'2 a'4
    ~a'4 a' a' a'
    a'4 a' a' a'
    a'4 r r2
    R1*5
    \mark \default \showBarNumber  % B 76
    d'1 \p ^\markup { \italic "Solo" }
    ~d'2 e'4 fis'
    g'1
    ~g'2 b
    e'1
    ~e'4 d' c' b
    a1 ~

    \break  % 83

    a4 r r d
    d'1
    ~d'4 b a g
    g2. fis4
    a2 r4 d
    d'1
    ~d'4 b a g
    g2. fis4
    a2 r
    d2 e
    fis1
    g4 r e'2 ^\markup { \italic "Solo" } ~

    \break  % 95

    e'2 fis'4 g'
    g'4 d'2 d'4
    ~d'4 d'2 c'4
    bes1
    c'2 bes
    b!2 b
    ~b2 a
    \mark \default \showBarNumber
    g4 r r2
    r2 r4 b4 \f
    c'4 b r2
    r2 r4 b
    e'4 d' r2

    \break  % 107

    r1
    bes1
    b!2 c'
    b1
    r4 d'2 d'4
    d'4 d' r2
    r4 d'2 d'4
    d'4 (c') r2
    r4 e'2 e'4
    dis'4 r r fis'
    e'4 dis' cis' b

    \break  % 118

    ais1
    ~ais2 b4 cis'
    dis'2 r4 fis'
    e'4 dis' cis' b
    ais2 fis'2
    ~fis'1 \>
    ~fis'1 \p
    ~fis'1
    ~fis'1
    ~fis'1 \cresc
    g'1

    \break  % 129

    a'1
    ~a'2 g'
    ~g'2 fis'
    \mark \default \showBarNumber
    g'2 \f r2
    r2 r4 b \f
    a4 (b) r2
    r2 r4 g
    e'4 b c' gis
    a4 eis fis d
    g4 r r2
    r4 d' c' b

    \pageBreak
    \break  % 140

    a4 (g) r2
    r4 d' c' b
    e'4 b c' gis
    a4 eis fis d
    g4 g8 fis g fis g fis
    g8 fis g8 fis g8 fis g8 fis
    g4 d' r2
    r1 ^\markup { "G.P." }

    \break  % 148

    aes4 aes' r2
    r1 ^\markup { "G.P." }
    \bar "||"
    \mark \default \showBarNumber  % E 150
    \key c \minor
    R1*4
    c'!1 \p
    ~c'2 d'4 es'!
    f'!1
    ~f'2 aes!
    aes1
    ~aes1
    ~aes1
    ~aes1
    g!1
    bes!1
    ~bes1 (

    \break  % 165

    a1)
    bes!4 r r2
    R1*7
    \bar "||"
    \key c \major
    \mark \default \showBarNumber  % F 174
    R1*2
    r2 r4 g
    aes2 \p (g4 f)
    e2. \cresc f4
    e4 f e f
    e1 \f
    ~e4 e e e
    e4 r r2

    \break  % 183

    R1*11 \showBarNumber
    cis'2 \p e'
    d'2 e'
    f'2 g' \!
    f'1 \p
    ~f'1 \<
    f'1
    f'1 \!
    r2 b \cresc
    ~b2 b2
    ~b4 r b2
    ~b2 b
    ~b4 r b2 ~

    \break  %206

    b4 b b b
    b4 r b2
    ~b2 ais
    \bar "||"
    \key e \minor
    \mark \default \showBarNumber  % G 209
    b4 \f r r2
    r1
    cis''2. ais'4
    fis'4 g' fis' e'
    d'4 r r2
    r1

    \break  % 215

    b'2. \f gis'4
    e'4 fis' e' d'
    cis'4 r r2
    r1
    a'2. fis'4
    d'4 e' d' c'!
    b4 d' c' b
    a4 c' b a

    \break  % 223

    g4 b a g
    fis4 g fis e
    dis4 r r2
    R1*2
    cis'1 \fp
    dis'4 b r2
    r1
    r2 r4 e'
    g'2 \fp fis'4 e'
    dis'4 r r2
    R1*7

    \break  % 241

    r1 \fermata
    r2 \fermata r4 r
    \mark \default \showBarNumber  % H 243
    R1*4
    r2 fis \p
    (g1)
    b1
    ~b2 r
    R1*7
    \mark "I" \showBarNumber  % I 258
    R1*2
    a'1 \f
    ~a'1
    g'4 r r2
    r1
    a'1 \sf ~

    \break  % 265

    a'1
    g'1
    ~g'1
    g'1
    ~g'1
    a'1
    ~a'1
    a'1 \sf
    fis'1 \sf
    g'1 \sf
    e'1 \sf
    dis'1
    ~dis'1
    ~dis'1
    ~dis'4 r r2 \fermata

    \bar "||"
    \mark \default  % J 280
    \key e \major
    \break  % 280

    R1*8
    r2 r4 b, \p ^\markup { \italic "Solo" }
    b2 a4 gis
    fis1
    ~fis2 r
    r2 r4 b,
    b2 a4 gis
    fis1
    ~fis2 r
    R1*4

    \pageBreak
    \break  % 300

    r2 b'
    ~b'2 a'
    g'1
    fis'2 e'
    e'2 gis'!
    ~gis'2 fis'
    \mark \default \showBarNumber  % K 306
    e'4 r r2
    r2 r4 gis \f
    a4 (gis) r2

    \break  % 309

    r2 r4 gis
    cis'4 (b) r2
    r1
    g'1
    gis'!2 fis'
    e'2 r
    r4 b2 b4
    b4 b r2
    r4 b2 b4
    c'4 (b) r2

    \break  % 319

    r1
    e'1 \ff
    f'1
    e'1
    ~e'1
    ~e'1
    ~e'1
    ~e'1 ~

    \break  % 327

    e'2 e'
    ~e'2 e'
    gis'!1
    fis'1
    \mark \default \showBarNumber  % L 331
    e'4 r r2
    R1*7
    gis1 \p \cresc
    ~gis
    fis1
    gis4 e \f \< fis gis
    a4 b cis' dis'

    \break  % 344

    e'1 \ff
    e'1 \sf
    e'1 \sf
    e'1 \sf
    e'1 \sf
    e'1 \sf
    e'1 \sf
    e'1 \sf
    e'1 \sf
    ~e'1
    e'1
    dis'1

    \break  % 356
    \mark \default  % M 356

    e'1 \sf
    e'1 \sf
    e'1 \sf
    e'1 \sf
    e'1 \sf
    e'1 \sf
    e'1 \sf
    e'1 \sf
    ~e'1

    \break  % 365

    e'1
    dis'1
    e'1
    e'1
    e'1
    e'1
    b4 e8 e e4 e
    e4 e e e

    \break  % 373

    e4 r e r
    gis4 r b r
    gis4 r r2
    gis4 r r2
    gis4 r r2

    \bar "|."
  }
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
