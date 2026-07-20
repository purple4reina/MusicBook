\include "common.ly"

longName  = "Bass Clarinet 10 in B♭"
shortName = "Bass Cl.10"

mvtI = \transpose c c' {
  \key aes \major
  \time 3/2
  \transposition bes,

  \set Score.rehearsalMarkFormatter = \format-mark-circle-numbers
  \set Timing.beatStructure = 1,1,1

  r2 ^\markup { \bold "Bass Clarinet" } r2 r2
  r2 r2 r4 bes,8-. \fadeIn bes,-.
  bes,-. bes,-. bes,-. bes,-. bes, \sim bes, bes, bes, bes, bes, bes, bes,

  bes, \f bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes,
  bes, \fadeOut bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes,
  bes, bes, bes, bes, \! r2 r2
  \mark 1 r2 r2 r4 des8-. \fadeIn des-.

  des-. des-. des-. des-. des \sim des des des des des des des
  des \f des des des des des des des des des des des
  des \fadeOut des des des des des des des des des des des \!
  \time 2/2 r2 r2

  \mark 2 \time 3/2 r2 r2 r2
  r4 f8 \fadeIn f f f f f f f f f
  f \f f f f f f f f f f f f

  f f f f f f f f f f f f
  f \fadeOut f f f f f f f f f f f
  f f f f \! r2 r2

  \mark 3 r2 r2 r4 des8 \fadeIn des
  des des des des des des des des des des des des
  des \f des des des des des des des des des des des

  des des des des des des des des des des des des
  des \fadeOut des des des des des des des des des des des \!
  \time 2/2 r2 r2

  \mark 4 \time 3/2 r2 r2 r4 bes,8 \fadeIn bes,
  bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes,
  bes, \f bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes,

  bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes,
  bes, \fadeOut bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes,
  bes, bes, bes, bes, \! r2 r2

  \mark 5 r2 r2 r4 des8 \fadeIn des
  des des des des des des des des des des des des
  des \f des des des des des des des des des des des
  des \fadeOut des des des des des des des des des des des \!

  \time 2/2 r2 r2
  \mark 6 \time 3/2 r2 r2 r2
  r4 f8 \fadeIn f f f f f f f f f

  f \f f f f f f f f f f f f
  f f f f f f f f f f f f
  f \fadeOut f f f f f f f f f f f
  f f f f \! r2 r2

  \mark 7 r2 r2 r4 des8 \fadeIn des
  des des des des des des des des des des des des
  des \f des des des des des des des des des des des

  des des des des des des des des des des des des
  des \fadeOut des des des des des des des des des des des
  des des des des des des des des \! r2
  r2 r2 r2

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
  \pageBreak
  \mark 37 r2 r2 r2

  r4 bes,8 \fadeIn bes, bes, bes, bes, bes, bes, bes, bes, bes,
  bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes,
  bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes,
  bes, \f bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes,
  bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes,
  bes, \fadeOut bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes,

  bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, \!
  \mark 38 r2 r2 r2
  r4 des8 \fadeIn des des des des des des des des des

  des des des des des des des des des des des des
  des des des des des des des des des des des des
  des \f des des des des des des des des des des des
  des des des des des des des des des des des des
  des \fadeOut des des des des des des des des des des des
  des des des des des des des des des des des des \!

  \mark 39 r2 r2 r2
  r4 f8 \fadeIn f f f f f f f f f
  f f f f f f f f f \f f f f

  f f f f f f f f f f f f
  f f f f f f f f f \fadeOut f f f
  f f f f f f f f f f f f \!

  \mark 40 r2 r2 r2
  r4 bes,8 \fadeIn bes, bes, bes, bes, bes, bes, bes, bes, bes,
  bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes,
  bes, \f bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes,

  bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes,
  bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes,
  bes, \fadeOut bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes,
  bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, \!

  \mark 41 r2 r2 r2
  r4 des8 \fadeIn des des des des des des des des des
  des des des des des des des des des des des des
  des \f des des des des des des des des des des des

  des des des des des des des des des des des des
  des des des des des des des des des des des des
  des \fadeOut des des des des des des des des des des des
  des des des des des des des des des des des des \!

  \mark 42 r2 r2 r2
  r4 f8 \fadeIn f f f f f f f f f
  f f f f f f f f f \f f f f

  f f f f f f f f f f f f
  f f f f f f f f f \fadeOut f f f
  f f f f f f f f f f f f \!

  \mark 43 r2 r2 r2
  r2 r2 r2
  r2 r2 r2

  \bar "||"
  \pageBreak
}

mvtII = \transpose c c {
  \key b \major
  \time 3/4
  \transposition bes

  \set Score.rehearsalMarkFormatter = \format-mark-circle-numbers

  \mark 44 R2.*4
  \mark 45 R2.*4
  \mark 46 R2.*4
  \mark 47 R2.*6
  \mark 48 R2.*4
  \mark 49 R2.*4
  \mark 50 R2.*2
  \mark 51 R2.*4
  \mark 52 R2.*2
  \mark 53 R2.*2

  \mark 54 r4 r4 r8 cis'16 \fadeIn cis'
  cis' cis' cis' cis' cis' cis' cis' cis' cis' cis' cis' cis'

  cis' cis' cis' cis' cis' cis' cis' cis' cis' cis' cis' cis'
  cis' \f cis' cis' cis' cis' cis' cis' cis' cis' cis' cis' cis'
  cis' cis' cis' cis' cis' cis' cis' \fadeOut cis' cis' cis' cis' cis'
  cis' cis' cis' cis' \! r4 r4

  \mark 55 r4 r4 r8 e16 \fadeIn e
  e e e e e e e e e e e e
  e \f e e e e e e e e e e e
  e e e e e e e e e e e e

  e \fadeOut e e e e e e e e e e e
  e e e e \! r4 r4
  \mark 56 r4 r4 r8 gis16 \fadeIn gis
  gis gis gis gis gis gis gis gis gis gis gis gis

  gis gis gis gis gis gis gis gis gis gis gis gis
  gis \f gis gis gis gis gis gis gis gis gis gis gis
  gis gis gis gis gis gis gis gis gis gis gis gis
  gis gis gis gis gis \fadeOut gis gis gis gis gis gis gis

  gis gis gis gis gis gis gis gis gis gis gis gis \!
  r4 r4 r4
  \mark 57 r4 r4 r8 cis'16 \fadeIn cis'
  cis' cis' cis' cis' cis' cis' cis' cis' cis' cis' cis' cis'

  cis' cis' cis' cis' cis' cis' cis' cis' cis' cis' cis' cis'
  cis' \f cis' cis' cis' cis' cis' cis' cis' cis' cis' cis' cis'
  cis' cis' cis' cis' cis' \fadeOut cis' cis' cis' cis' cis' cis' cis'
  cis' cis' cis' cis' \! r4 r4

  \mark 58 r4 r4 e16 \fadeIn e e e
  e e e e e e e e e e e e
  e \f e e e e e e e e e e e
  e e e e e e e e e e e e

  e \fadeOut e e e e e e e e e e e
  e e e e \! r4 r4
  \mark 59 r4 r4 r8 gis16 \fadeIn gis
  gis gis gis gis gis gis gis gis gis gis gis gis

  gis gis gis gis gis gis gis gis gis gis gis gis
  gis \f gis gis gis gis gis gis gis gis gis gis gis
  gis gis gis gis gis gis gis gis gis gis gis gis
  gis \fadeOut gis gis gis gis gis gis gis gis gis gis gis

  gis gis gis gis gis gis gis gis \! r4
  r4 r4 r4
  \mark 60 R2.*6
  \bar "||"

  \pageBreak
}

mvtIII = {}

clarinet_X = #(make-part longName
  #{ \new Staff \with { instrumentName = #shortName } \mvtI #}
  #{ \new Staff \with { instrumentName = #shortName } \mvtII #}
  #{ \new Staff \with { instrumentName = #shortName } \mvtIII #}
)

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
