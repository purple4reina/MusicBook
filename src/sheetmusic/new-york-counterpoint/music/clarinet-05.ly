\include "common.ly"

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
  r2 r2 f4 des8 \fadeIn des
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

mvtIII = {}

clarinet_V = #(make-part longName
  #{ \new Staff \with { instrumentName = #shortName } \mvtI #}
  #{ \new Staff \with { instrumentName = #shortName } \mvtII #}
  #{ \new Staff \with { instrumentName = #shortName } \mvtIII #}
)

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
