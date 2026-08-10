\include "common.ly"

longName  = "Clarinet 7 in B♭"
shortName = "Cl.7"

mvtI = \transpose c c'' {
  \key aes \major
  \time 3/2
  \transposition bes

  \set Score.rehearsalMarkFormatter = \format-mark-circle-numbers
  \set Timing.beatStructure = 1,1,1

  R1.*3

  R1.*3
  \mark 1 R1.

  R1.*3
  \time 2/2 R1

  \mark 2 \time 3/2 R1.*3

  R1.*3

  \mark 3 R1.*3

  R1.*2
  \time 2/2 R1

  \mark 4 \time 3/2 R1.*3
  R1.*3

  \mark 5 R1.*4

  \time 2/2 R1
  \mark 6 \time 3/2 R1.*2

  R1.*4

  \mark 7 R1.*3

  R1.*4

  \mark 8 R1.*2
  \mark 9 R1.*3
  \mark 10 R1.*2

  \mark 11 R1.
  \mark 12 R1.*2
  \mark 13 R1.*2

  \mark 14 R1.
  \mark 15 R1.*3
  \mark 16 R1.*2

  \mark 17 R1.*2
  \mark 18 R1.*2
  \mark 19 R1.

  \mark 20 R1.*3
  \mark 21 R1.*3
  \mark 22 R1.*2

  \mark 23 R1.*2
  \mark 24 R1.
  \mark 25 R1.*3

  \mark 26 R1.*2
  \mark 27 R1.
  \mark 28 R1.*2

  \mark 29 R1.*2
  \mark 30 R1.
  \mark 31 R1.*3

  \mark 32 R1.*2
  \mark 33 R1.*2
  \mark 34 R1.*2

  \mark 35 R1.*2
  \mark 36 R1.*2
  \mark 37 r4 es8 \fadeIn es es es es es es es es es

  es es es es es es es es es es es es
  es es es es es es es es es es es es
  es \f es es es es es es es es es es es
  es es es es es es es es es es es es
  es \fadeOut es es es es es es es es es es es
  es es es es es es es es es es es es \!

  r2 r2 r2
  \mark 38 r4 c8 \fadeIn c c c c c c c c c
  c c c c c c c c c c c c

  c c c c c c c c c c c c
  c \f c c c c c c c c c c c
  c c c c c c c c c c c c
  c \fadeOut c c c c c c c c c c c
  c c c c c c c c c c c c \!
  r2 r2 r2

  \mark 39 r4 d8 \fadeIn d d d d d d d d d
  d d d d d d d d d \f d d d
  d d d d d d d d d d d d

  d d d d d d d \fadeOut d d d d d
  d d d d d d d d d d d d \!
  r2 r2 r2

  \mark 40 r4 es8 \fadeIn es es es es es es es es es
  es es es es es es es es es es es es
  es \f es es es es es es es es es es es
  es es es es es es es es es es es es

  es es es es es es es es es es es es
  es \fadeOut es es es es es es es es es es es
  es es es es es es es es es es es es \!
  r2 r2 r2

  \mark 41 r4 c8 \fadeIn c c c c c c c c c
  c c c c c c c c c c c c
  c \f c c c c c c c c c c c
  c c c c c c c c c c c c

  c c c c c c c c c c c c
  c \fadeOut c c c c c c c c c c c
  c c c c c c c c c c c c \!
  r2 r2 r2

  \mark 42 r4 d8 \fadeIn d d d d d d d d d
  d d d d d d d d d \f d d d
  d d d d d d d d d d d d

  d d d d d d d \fadeOut d d d d d
  d d d d d d d d d d d d \!
  r2 r2 r2

  \mark 43 r2 r2 r2
  r2 r2 r2
  r2 r2 r2

  \bar "||"
  \pageBreak
}

poop = {
  cis'4-- b16 gis e) r r8 ais16-- r
  r8 fis16 (cis gis4-- \beamer b16) r ais (fis
}

mvtII = \transpose c c'' {
  \key b \major
  \time 3/4
  \transposition bes

  \set Score.rehearsalMarkFormatter = \format-mark-circle-numbers

  \mark 44 cis'4-- \mp (b16 gis e) r r8 ais16-- r
  r8 fis16 (cis gis4-- \beamer b16) r ais (fis
  \poop
  \mark 45 \poop \poop

  \mark 46 \poop \poop
  \mark 47 \poop

  cis'4-- \fadeOut b16 gis e) r r8 ais16-- r
  r8 fis16 (cis gis4-- \beamer b16) r ais (fis) \!
  R2.*2

  \mark 48 R2.*4
  \mark 49 R2.*4
  \mark 50 R2.*2
  \mark 51 R2.*4
  \mark 52 R2.*2

  \mark 53 R2.*2
  \mark 54 r4 r8 fis16 \fadeIn fis fis fis fis fis
  fis fis fis fis fis fis fis fis fis fis fis fis

  fis fis fis fis fis fis fis fis fis fis fis fis
  fis \f fis fis fis fis fis fis fis fis fis fis fis
  fis fis fis fis fis fis fis \fadeOut fis fis fis fis fis
  fis fis fis fis fis fis fis fis \! r4

  \mark 55 r4 r8 ais16 \fadeIn ais ais ais ais ais
  ais ais ais ais ais ais ais ais ais ais ais ais
  ais \f ais ais ais ais ais ais ais ais ais ais ais
  ais ais ais ais ais ais ais ais ais ais ais ais

  ais \fadeOut ais ais ais ais ais ais ais ais ais ais ais
  ais ais ais ais ais ais ais ais \! r4
  \mark 56 r4 r8 cis'16 \fadeIn cis' cis' cis' cis' cis'
  cis' cis' cis' cis' cis' cis' cis' cis' cis' cis' cis' cis'

  cis' cis' cis' cis' cis' cis' cis' cis' cis' cis' cis' cis'
  cis' \f cis' cis' cis' cis' cis' cis' cis' cis' cis' cis' cis'
  cis' cis' cis' cis' cis' cis' cis' cis' cis' cis' cis' cis'
  cis' cis' cis' cis' cis' \fadeOut cis' cis' cis' cis' cis' cis' cis'

  cis' cis' cis' cis' cis' cis' cis' cis' cis' cis' cis' cis'
  cis' cis' cis' cis' \! r4 r4
  \mark 57 r4 r8 fis16 \fadeIn fis fis fis fis fis
  fis fis fis fis fis fis fis fis fis fis fis fis

  fis fis fis fis fis fis fis fis fis fis fis fis
  fis \f fis fis fis fis fis fis fis fis fis fis fis
  fis fis fis fis fis \fadeOut fis fis fis fis fis fis fis
  fis fis fis fis fis fis fis fis \! r4

  \mark 58 r4 r8 ais16 \fadeIn ais ais ais ais ais
  ais ais ais ais ais ais ais ais ais ais ais ais
  ais \f ais ais ais ais ais ais ais ais ais ais ais
  ais ais ais ais ais ais ais ais ais ais ais ais

  ais \fadeOut ais ais ais ais ais ais ais ais ais ais ais
  ais ais ais ais ais ais ais ais \! r4
  \mark 59 r4 r8 cis'16 \fadeIn cis' cis' cis' cis' cis'
  cis' cis' cis' cis' cis' cis' cis' cis' cis' cis' cis' cis'

  cis' cis' cis' cis' cis' cis' cis' cis' cis' cis' cis' cis'
  cis' \f cis' cis' cis' cis' cis' cis' cis' cis' cis' cis' cis'
  cis' cis' cis' cis' cis' cis' cis' cis' cis' cis' cis' cis'
  cis' \fadeOut cis' cis' cis' cis' cis' cis' cis' cis' cis' cis' cis'

  cis' cis' cis' cis' cis' cis' cis' cis' cis' cis' cis' cis' \!
  r4 r4 r4
  \mark 60 R2.*6
  \bar "||"

  \pageBreak
}

#(define lastPrintedKeyAlterations
   (ly:music-property #{ \key aes \major #} 'pitch-alist))
#(define (key-visibility key)
   (let* ((alterations (ly:music-property key 'pitch-alist))
          (visibility (if (equal? lastPrintedKeyAlterations alterations)
                           all-invisible all-visible)))
     (set! lastPrintedKeyAlterations alterations)
     visibility))

dFlatFBEsF = #(
  key-phrase #{ \key aes \major #}
  #{ aes8 #}
  #{
    r8 es r f b, r es r g, r des
    aes4-- ~aes8 r es f r b, r es g, r
  #}
)
FlatFBEsF = #(no-dynamic dFlatFBEsF)

dSharpBCisBCis = #(
  key-phrase #{ \key b \major #}
  #{ gis8 #}
  #{
    r8 fis' r dis' r b cis' r dis' r gis
    r8 cis' fis' r dis' r b cis' r dis' r cis'
  #}
)
SharpBCisBCis = #(no-dynamic dSharpBCisBCis)

dSharpGisDisGisDis = #(
  key-phrase #{ \key b \major #}
  #{ gis8 #}
  #{
    r8 gis' r dis' r gis dis' r gis' r gis
    r8 dis' gis r gis' r gis dis' r gis' r dis'
  #}
)
SharpGisDisGisDis = #(no-dynamic dSharpGisDisGisDis)

mvtIII = \transpose c c'' {
  \key aes \major
  \time 3/2
  \transposition bes

  \set Score.rehearsalMarkFormatter = \format-mark-circle-numbers
  \set Timing.beatStructure = 1,1,1

  \mark 61 \dFlatFBEsF \mf \FlatFBEsF \break
  \mark 62 \FlatFBEsF \FlatFBEsF \break
  \mark 63 \FlatFBEsF
  \mark 64 \FlatFBEsF \break
  \mark 65 \FlatFBEsF \dFlatFBEsF \fadeOut \! \break

  R1.*2
  \mark 66 R1.*6
  \mark 67 R1.*4
  \mark 68 R1.*2
  \mark 69 R1.*2
  \mark 70 R1.*6
  \mark 71 R1.*6
  \mark 72 R1.*4
  \mark 73 R1.*4
  \mark 74 R1.*4
  \mark 75 R1.*4
  \mark 76 R1.*4
  \mark 77 R1.*2
  \mark 78 R1.*2
  \mark 79 R1.*2
  \mark 80 R1.*2
  \mark 81 R1.*2
  \mark 82 R1.*2
  \mark 83 R1.*2
  \mark 84 R1.*2
  \mark 85 R1.*2
  \mark 86 R1.*2
  \mark 87 R1.*2
  \mark 88 R1.*6 \break

  \mark 89 \SharpBCisBCis \SharpBCisBCis \break \SharpBCisBCis
  \mark 90 \SharpGisDisGisDis \break \SharpGisDisGisDis \SharpGisDisGisDis \break \SharpGisDisGisDis
  gis8-^ r r4 r 2 r2
  \bar "|."
  \pageBreak
}

uniqI = { s1 }
uniqII = { s1 }
uniqIII = { s1 }

clarinet_VII = #(make-part longName
  #{ \new Staff \with { instrumentName = #shortName } \mvtI #}
  #{ \new Staff \with { instrumentName = #shortName } \mvtII #}
  #{ \new Staff \with { instrumentName = #shortName } \mvtIII #}
  #{ \uniqI #}
  #{ \uniqII #}
  #{ \uniqIII #}
)

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
