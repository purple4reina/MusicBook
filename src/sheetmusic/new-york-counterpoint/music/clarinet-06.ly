\include "common.ly"

\paper {
  page-count = #f
}

longName  = "Clarinet 6 in B♭"
shortName = "Cl.6"

boop = { es8 aes, r f, r g r c' f4-- ~f8 r }
beep = { es8 aes, r f, r g r bes f4-- ~f8 r }

mvtI = \transpose c c' {
  \key aes \major
  \time 3/2
  \transposition bes

  \autoPageBreaksOff
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
  \break \mark 34 es8 \fadeIn aes, \ten r f, r g r c' f4-- ~f8 r
  \boop

  \mark 35 es8 \mf aes, r f, r g r c' f4-- ~f8 r \boop \break
  \mark 36 \boop \boop
  \mark 37 \boop

  \boop \break \boop \boop \boop \boop \pageBreak \boop

  \boop \mark 38 \boop \boop \break

  \boop \boop \boop \boop \break \boop \boop

  \mark 39 \beep \beep \break \beep

  \beep \beep \beep \break

  \mark 40 \boop \boop \boop \boop \break

  \boop \boop \boop \boop \break

  \mark 41 \boop \boop \boop \boop \break

  \boop \boop \boop \boop \break

  \mark 42 \beep \beep \beep

  \beep \break \beep \beep

  \beep
  es8 \fadeOut aes, r f, r g r bes f4-- ~f8 r
  \beep \!

  \bar "||"
  \pageBreak
}

poop = {
  \beamer gis16) r fis (cis ais4-- gis16 e b,) r
  r8 fis16-- r r8 cis16 (ais, e4--
}

mvtII = \transpose c c' {
  \key b \major
  \time 3/4
  \transposition bes

  \set Score.rehearsalMarkFormatter = \format-mark-circle-numbers

  \mark 44 R2.*4
  \mark 45 R2.*4

  \mark 46 R2.*4
  \mark 47 R2.*2

  R2.*4

  \mark 48 r4 \mf ais4-- (gis16 e b,) r
  r4 r4 r4
  r4 ais4-- (gis16 e b,) r
  r4 r4 r4
  \mark 49 r4 ais4-- (gis16 e b,) r
  r8 fis16-- r r8 cis16 (ais,) r4

  r4 ais4-- \mf (gis16 e b,) r
  r8 fis16-- r r8 cis16 (ais, e4--
  \mark 50 \poop

  \mark 51 \beamer gis16) \> r fis (cis ais4-- gis16 e b,) r
  r8 fis16-- r r8 cis16 (ais, e4--
  \poop
  \mark 52 \beamer gis16) \mf r fis (cis ais4-- gis16 e b,) r
  r8 fis16-- r r8 cis16 (ais, e4--

  \mark 53 \poop
  \mark 54 \poop

  \poop \poop

  \mark 55 \poop \poop

  \poop \mark 56 \poop

  \poop \poop

  \poop \mark 57 \poop

  \poop \poop

  \mark 58 \poop \poop

  \poop \mark 59 \poop

  \poop \poop

  \poop
  \mark 60 \poop
  \beamer gis16) \fadeOut r fis (cis ais4-- gis16 e b,) r
  r8 fis16-- r r8 cis16 (ais, e4--

  \beamer gis16) r fis (cis ais4-- gis16 e b,) \! r
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

dFlatAesEsGAes = #(
  key-phrase #{ \key aes \major #}
  #{ des8 #}
  #{
    r8 b r g r aes es r g r des
    r8 f b4-- ~b8 r g aes r es r g
  #}
)
FlatAesEsGAes = #(no-dynamic dFlatAesEsGAes)

dSharpAEGisA = #(
  key-phrase #{ \key e \major #}
  #{ cis #}
  #{
    r8 b r gis r a e r gis r cis
    r8 fis b4-- ~b8 r gis a r e r gis
  #}
)
SharpAEGisA = #(no-dynamic dSharpAEGisA)

dFlatDesEsAesEsGAes = #(
  key-phrase #{ \key aes \major #}
  #{ des8 #}
  #{
    es8 r b r g r aes es r g r
    des8 r f b8-- ~b4 r8 g aes r es r
  #}
)
FlatDesEsAesEsGAes = #(no-dynamic dFlatDesEsAesEsGAes)

dSharpCisEAEGisA = #(
  key-phrase #{ \key e \major #}
  #{ cis8 #}
  #{
    e8 r b r gis r a e r gis r
    cis8 r fis b-- ~b4 r8 gis a r e r
  #}
)
SharpCisEAEGisA = #(no-dynamic dSharpCisEAEGisA)

mvtIII = \transpose c c' {
  \key aes \major
  \time 3/2
  \transposition bes

  \autoPageBreaksOff
  \set Score.rehearsalMarkFormatter = \format-mark-circle-numbers
  \set Timing.beatStructure = 1,1,1

  \mark 61 R1.*4

  \mark 62 r2 r4 aes8 \f es r g r4
  r4 b4-- ~b8 r g aes r2
  r2 r4 aes8 es r g r4
  r4 b4-- ~b8 r g aes r2 \break

  \mark 63 r4 b8 r g r aes es r g r4
  r8 f b4-- ~b8 r g aes r es r4
  \mark 64 r4 b8 r g r aes es r g r4
  r8 f b4-- ~b8 r g aes r es r g \break

  \mark 65 \FlatAesEsGAes \dFlatAesEsGAes \fadeOut \break \dFlatAesEsGAes \mf
  \mark 66 \FlatAesEsGAes \break \FlatAesEsGAes \FlatAesEsGAes \break
  \mark 67 \FlatAesEsGAes \FlatAesEsGAes \break
  \mark 68 \FlatAesEsGAes
  \mark 69 \FlatAesEsGAes \break
  \mark 70 \FlatAesEsGAes \FlatAesEsGAes \break \FlatAesEsGAes
  \mark 71 \SharpAEGisA \break \SharpAEGisA \SharpAEGisA \pageBreak
  \mark 72 \SharpAEGisA \SharpAEGisA \break
  \mark 73 \FlatDesEsAesEsGAes \FlatDesEsAesEsGAes \break
  \mark 74 \FlatAesEsGAes \FlatAesEsGAes \break
  \mark 75 \SharpCisEAEGisA \SharpCisEAEGisA \break
  \mark 76 \SharpAEGisA \SharpAEGisA \break
  \mark 77 \FlatDesEsAesEsGAes
  \mark 78 \FlatAesEsGAes \break
  \mark 79 \SharpAEGisA
  \mark 80 \SharpCisEAEGisA \break
  \mark 81 \FlatDesEsAesEsGAes
  \mark 82 \FlatAesEsGAes \break
  \mark 83 \SharpAEGisA
  \mark 84 \SharpCisEAEGisA \break

  \once \set Staff.explicitKeySignatureVisibility = #(key-visibility #{ \key aes \major #})
  \key aes \major
  \mark 85 des8 es r b r g r aes es r g r
  des8 \fadeOut r f b-- ~b4 r8 g aes r es r
  \mark 86 \FlatAesEsGAes \! \break

  \mark 87 R1.*2
  \mark 88 R1.*6
  \mark 89 R1.*6
  \mark 90 R1.*9
  \bar "|."
  \pageBreak
}

uniqI = { s1 }
uniqII = { s1 }
uniqIII = { s1 }

clarinet_VI = #(make-part longName
  #{ \new Staff \with { instrumentName = #shortName } \mvtI #}
  #{ \new Staff \with { instrumentName = #shortName } \mvtII #}
  #{ \new Staff \with { instrumentName = #shortName } \mvtIII #}
  #{ \uniqI #}
  #{ \uniqII #}
  #{ \uniqIII #}
)

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
