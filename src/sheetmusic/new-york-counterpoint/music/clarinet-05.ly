\include "common.ly"

\paper {
  page-count = 8
}

longName  = "Clarinet 5 in B♭"
shortName = "Cl.5"

boop = { f,8 r f r bes g-- ~g4 r8 es aes, r }

mvtI = \transpose c c' {
  \key aes \major
  \time 3/2
  \transposition bes

  \set Score.rehearsalMarkFormatter = \format-mark-circle-numbers
  \set Timing.beatStructure = 1,1,1

  des8 \fadeIn des des des des des des des des des des des
  des des des des des des des des des des des des
  des \f des des des des des des des des des des des

  des des des des des des des des des des des des
  des des des des des des des des des des des des
  des \fadeOut des des des des des des des des des des des
  \mark 1 des des des des des des des des \! r2

  r2 r4 f8 \fadeIn f f f f f
  f f f f f f f \f f f f f f
  f f f f f \fadeOut f f f f f f f
  \time 2/2 f f f f \! r2

  \mark 2 \time 3/2 r2 r2 r2
  r2 r2 r4 es8 \fadeIn es
  es es es es es es es es es es es es

  es \f es es es es es es es es es es es
  es es es es es es es es es es es es
  es es es es es es es es es \fadeOut es es es

  \mark 3 es es es es es es es es es es es es \!
  r2 r2 r4 f8 \fadeIn f
  f f f f f f f f f f f f

  f \f f f f f f f f f f f f
  f f f f f f f f f f f f
  \time 2/2 f f f f f \fadeOut f f f

  \mark 4 \time 3/2 f f f f f f f f f f f f \!
  r2 r2 r4 des8 \fadeIn des
  des des des des des des des des des des des des

  des \f des des des des des des des des des des des
  des des des des des des des des des des des des
  des \fadeOut des des des des des des des des des des des

  \mark 5 des des des des des des des des \! r2
  r2 r4 f8 \fadeIn f f f f f
  f f f f f f f \mf f f f f f
  f f f f f f f \fadeOut f f f f f

  \time 2/2 f f f f \! r2
  \mark 6 \time 3/2 r2 r2 r2
  r2 r2 r4 es8 \fadeIn es

  es es es es es es es es es es es es
  es \f es es es es es es es es es es es
  es es es es es es es es es es es es
  es es es es es es es \fadeOut es es es es es

  \mark 7 es es es es es es es es es es es es \!
  r2 r2 r4 f8 \fadeIn f
  f f f f f f f f f f f f

  f \f f f f f f f f f f f f
  f f f f f f f f f f f f
  f \fadeOut f f f f f f f f f f f
  f f f f f f f f f f f f \!

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

  \pageBreak
  \mark 29 f,8 \fadeIn r \ten f r bes g-- ~g4 r8 es aes, r
  \boop
  \mark 30 f,8 \mf r f r bes g-- ~g4 r8 es aes, r
  \mark 31 \boop \break \boop \boop

  \mark 32 \boop \boop \break
  \mark 33 \boop \boop
  \mark 34 \boop \boop \break

  \mark 35 \boop \boop
  \mark 36 \boop \boop \break
  \mark 37 \boop

  \boop \boop \boop \break \boop \boop \boop

  \boop \break \mark 38 \boop \boop

  \boop \boop \break \boop \boop \boop \boop \break

  \mark 39 \boop \boop \boop
  \boop \break \boop \boop

  \mark 40 \boop \boop \break \boop \boop

  \boop \boop \break \boop \boop

  \mark 41 \boop \boop \break \boop \boop

  \boop \boop \break \boop \boop

  \mark 42 \boop \boop \break \boop

  \boop \boop \boop \break

  \mark 43 \boop
  f,8 \fadeOut r f r bes g-- ~g4 r8 es aes, r
  \boop \!

  \bar "||"
  \pageBreak
}

poop = {
  fis16 (cis ais8-- ~ais gis16 e b,) r8.
  fis16-- r8. cis16 (ais, e8-- ~e cis16) r
}

mvtII = \transpose c c' {
  \key b \major
  \time 3/4
  \transposition bes

  \set Score.rehearsalMarkFormatter = \format-mark-circle-numbers

  \mark 44 R2.*4
  \mark 45 r8 ais-- \mf (~ais gis16 e b,) r8.
  r4 r4 r4
  r8 ais-- (~ais gis16 e b,) r8.
  r4 r4 r4

  \mark 46 fis16 (cis ais8-- ~ais gis16 e b,) r8.
  fis16-- r8. r4 r4
  fis16 (cis ais8-- ~ais gis16 e b,) r8.
  fis16-- r8. r4 r4
  \mark 47 \poop

  fis16 \> (cis ais8-- ~ais gis16 e b,) r8.
  fis16-- r8. cis16 (ais, e8-- ~e cis16) r
  fis16 \mp (cis ais8-- ~ais gis16 e b,) r8.
  fis16-- r8. cis16 (ais, e8-- ~e cis16) r

  \mark 48 \poop \poop
  \mark 49 \poop

  \poop
  \mark 50 \poop

  \mark 51 \poop \poop
  \mark 52 \poop

  \mark 53 \poop
  \mark 54 \poop

  \poop \poop

  \mark 55 \poop \poop

  \poop
  \mark 56 \poop

  \poop \poop

  \poop
  \mark 57 \poop

  \poop \poop

  \mark 58 \poop \poop

  \poop
  \mark 59 \poop

  \poop \poop

  \poop
  \mark 60 \poop
  fis16 \fadeOut (cis ais8-- ~ais gis16 e b,) r8.
  fis16-- r8. cis16 (ais, e8-- ~e cis16) r

  fis16 (cis ais8-- ~ais gis16 e b,) \! r8.
  r4 r4 r4
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
#(define (no-dynamic fn)
   (define-music-function () () #{ $fn {} #}))
#(define (key-phrase key musicOne musicTwo)
   (define-music-function (dynamic) (ly:music?) #{
     \once \set Staff.explicitKeySignatureVisibility = #(key-visibility key)
     $key
     $musicOne $dynamic $musicTwo
   #}))

dFlatFBEsF = #(
  key-phrase #{ \key aes \major #}
  #{ g,8 #}
  #{
    r8 aes r es r f b, r es r g,
    r8 des aes4-- ~aes8 r es f r b, r es
  #}
)
FlatFBEsF = #(no-dynamic dFlatFBEsF)

dSharpEBDisE = #(
  key-phrase #{ \key e \major #}
  #{ gis,8 #}
  #{
    r8 gis r dis r e b, r dis r gis,
    r8 cis gis4-- ~gis8 r dis e r b, r dis
  #}
)
SharpEBDisE = #(no-dynamic dSharpEBDisE)

dFlatGBFBEsF = #(
  key-phrase #{ \key aes \major #}
  #{ g,8 #}
  #{
    b,8 r aes r es r f b,! r es r
    g,8 r des aes8-- ~aes4 r8 es f r b, r
  #}
)
FlatGBFBEsF = #(no-dynamic dFlatGBFBEsF)

dSharpGisBEBDisE = #(
  key-phrase #{ \key e \major #}
  #{ gis,8 #}
  #{
    b,8 r gis r dis r e b, r dis r
    gis,8 r cis gis8-- ~gis4 r8 dis e r b, r
  #}
)
SharpGisBEBDisE = #(no-dynamic dSharpGisBEBDisE)

dSharpGisDisGisDis = #(
  key-phrase #{ \key e \major #}
  #{ gis,8 #}
  #{
    r8 gis r dis r gis, dis r gis r gis,
    r8 dis gis4-- ~gis8 r gis, dis r gis r dis
  #}
)
SharpGisDisGisDis = #(no-dynamic dSharpGisDisGisDis)

mvtIII = \transpose c c'' {
  \key aes \major
  \time 3/2
  \transposition bes

  \set Score.rehearsalMarkFormatter = \format-mark-circle-numbers
  \set Timing.beatStructure = 1,1,1

  \mark 61 R1.*4
  \mark 62 R1.*4
  \mark 63 R1.*2
  \mark 64 R1.*2
  \mark 65 R1.*2

  \dFlatFBEsF \fadeIn \break \dFlatFBEsF \mf
  \mark 66 \FlatFBEsF \break \FlatFBEsF \FlatFBEsF \break
  \mark 67 \FlatFBEsF \FlatFBEsF \break
  \mark 68 \FlatFBEsF
  \mark 69 \FlatFBEsF \break
  \mark 70 \FlatFBEsF \FlatFBEsF \break \FlatFBEsF
  \mark 71 \SharpEBDisE \break \SharpEBDisE \SharpEBDisE \break
  \mark 72 \SharpEBDisE \SharpEBDisE \break
  \mark 73 \FlatGBFBEsF \FlatGBFBEsF \break
  \mark 74 \FlatFBEsF \FlatFBEsF \pageBreak
  \mark 75 \SharpGisBEBDisE \SharpGisBEBDisE \break
  \mark 76 \SharpEBDisE \SharpEBDisE \break
  \mark 77 \FlatGBFBEsF
  \mark 78 \FlatFBEsF \break
  \mark 79 \SharpEBDisE
  \mark 80 \SharpGisBEBDisE \break
  \mark 81 \FlatGBFBEsF
  \mark 82 \FlatFBEsF \break
  \mark 83 \SharpEBDisE
  \mark 84 \SharpGisBEBDisE \break
  \mark 85 \FlatGBFBEsF
  \mark 86 \FlatFBEsF \break
  \mark 87 \SharpEBDisE
  \mark 88 \SharpGisDisGisDis \break \SharpGisDisGisDis \SharpGisDisGisDis \break
  \mark 89 \SharpGisDisGisDis \SharpGisDisGisDis \break \SharpGisDisGisDis
  \mark 90 \SharpGisDisGisDis \break \SharpGisDisGisDis \SharpGisDisGisDis \SharpGisDisGisDis
  gis,8-^ r r4 r2 r2
  \bar "|."
  \pageBreak
}

clarinet_V = #(make-part longName
  #{ \new Staff \with { instrumentName = #shortName } \mvtI #}
  #{ \new Staff \with { instrumentName = #shortName } \mvtII #}
  #{ \new Staff \with { instrumentName = #shortName } \mvtIII #}
)

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
