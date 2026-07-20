\include "common.ly"

longName  = "Bass Clarinet 8 in B♭"
shortName = "Cl.8"
shortNameMvtI = "Bass Cl.8"

mvtI = \transpose c c' {
  \key aes \major
  \time 3/2
  \transposition bes,

  \set Score.rehearsalMarkFormatter = \format-mark-circle-numbers
  \set Timing.beatStructure = 1,1,1

  r2 ^\markup { \bold "Bass Clarinet" } r2 r2
  r2 r2 r4 c'8-. \fadeIn c'-.
  c'-. c'-. c'-. c'-. c' \sim c' c' c' c' c' c' c'

  c' \f c' c' c' c' c' c' c' c' c' c' c'
  c' c' c' c' c' c' c' c' c' \fadeOut c' c' c'
  c' c' c' c' c' c' c' c' \! r2
  \mark 1 r2 r2 r4 es'8-. \fadeIn es'-.

  es'-. es'-. es'-. es'-. es' \sim es' es' es' es' es' es' es'
  es' \f es' es' es' es' es' es' es' es' es' es' es'
  es' es' es' es' es' \fadeOut es' es' es' es' es' es' es'
  \time 2/2 es' es' es' es' \! r2

  \mark 2 \time 3/2 r2 r2 r2
  r4 g'8 \fadeIn g' g' g' g' g' g' g' g' g'
  g' \f g' g' g' g' g' g' g' g' g' g' g'

  g' g' g' g' g' g' g' g' g' g' g' g'
  g' g' g' g' g' \fadeOut g' g' g' g' g' g' g'
  g' g' g' g' g' g' g' g' \! r2

  \mark 3 r2 r2 r4 es'8 \fadeIn es'
  es' es' es' es' es' es' es' es' es' es' es' es'
  es' \f es' es' es' es' es' es' es' es' es' es' es'

  es' es' es' es' es' es' es' es' es' es' es' es'
  es' \fadeOut es' es' es' es' es' es' es' es' es' es' es'
  \time 2/2 es' es' es' es' \! r2

  \mark 4 \time 3/2 r2 r2 r4 c'8 \fadeIn c'
  c' c' c' c' c' c' c' c' c' c' c' c'
  c' \f c' c' c' c' c' c' c' c' c' c' c'

  c' c' c' c' c' c' c' c' c' c' c' c'
  c' c' c' c' c' c' c' c' c' \fadeOut c' c' c'
  c' c' c' c' c' c' c' c' \! r2

  \mark 5 r2 r2 r4 es'8 \fadeIn es'
  es' es' es' es' es' es' es' es' es' es' es' es'
  es' \f es' es' es' es' es' es' es' es' es' es' es'
  es' es' es' es' es' es' es' \fadeOut  es' es' es' es' es'

  \time 2/2 es' es' es' es' \! r2
  \mark 6 \time 3/2 r2 r2 r2
  r4 g'8 \fadeIn g' g' g' g' g' g' g' g' g'

  g' \f g' g' g' g' g' g' g' g' g' g' g'
  g' g' g' g' g' g' g' g' g' g' g' g'
  g' g' g' g' g' g' g' \fadeOut g' g' g' g' g'
  g' g' g' g' g' g' g' g' \! r2

  \mark 7 r2 r2 r4 es'8 \fadeIn es'
  es' es' es' es' es' es' es' es' es' es' es' es'
  es' \f es' es' es' es' es' es' es' es' es' es' es'

  es' es' es' es' es' es' es' es' es' es' es' es'
  es' \fadeOut es' es' es' es' es' es' es' es' es' es' es'
  es' es' es' es' es' es' es' es' es' es' es' es' \!
  r2 ^\markup { \bold "to Clarinet in B♭" } r2 r2
  \transposition bes

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
  \mark 37 r4 aes8 \fadeIn aes aes aes aes aes aes aes aes aes

  aes aes aes aes aes aes aes aes aes aes aes aes
  aes aes aes aes aes aes aes aes aes aes aes aes
  aes \f aes aes aes aes aes aes aes aes aes aes aes
  aes aes aes aes aes aes aes aes aes aes aes aes
  aes \fadeOut aes aes aes aes aes aes aes aes aes aes aes
  aes aes aes aes aes aes aes aes aes aes aes aes \!

  r2 r2 r2
  \mark 38 r4 es8 \fadeIn es es es es es es es es es
  es es es es es es es es es es es es

  es es es es es es es es es es es es
  es \f es es es es es es es es es es es
  es es es es es es es es es es es es
  es \fadeOut es es es es es es es es es es es
  es es es es es es es es es es es es \!
  r2 r2 r2

  \mark 39 r4 g8 \fadeIn g g g g g g g g g
  g g g g g g g g g \f g g g
  g g g g g g g g g g g g

  g g g g g g g \fadeOut g g g g g
  g g g g g g g g g g g g \!
  r2 r2 r2

  \mark 40 r4 aes8 \fadeIn aes aes aes aes aes aes aes aes aes
  aes aes aes aes aes aes aes aes aes aes aes aes
  aes \f aes aes aes aes aes aes aes aes aes aes aes
  aes aes aes aes aes aes aes aes aes aes aes aes

  aes aes aes aes aes aes aes aes aes aes aes aes
  aes \fadeOut aes aes aes aes aes aes aes aes aes aes aes
  aes aes aes aes aes aes aes aes aes aes aes aes \!
  r2 r2 r2

  \mark 41 r4 es8 \fadeIn es es es es es es es es es
  es es es es es es es es es es es es
  es \f es es es es es es es es es es es
  es es es es es es es es es es es es

  es es es es es es es es es es es es
  es \fadeOut es es es es es es es es es es es
  es es es es es es es es es es es es \!
  r2 r2 r2

  \mark 42 r4 g8 \fadeIn g g g g g g g g g
  g g g g g g g g g \f g g g
  g g g g g g g g g g g g

  g g g g g g g \fadeOut g g g g g
  g g g g g g g g g g g g \!
  r2 r2 r2

  \mark 43 r2 r2 r2
  r2 r2 r2
  r2 r2 r2

  \bar "||"
  \pageBreak
}

poop = {
  ais4-- gis16 e b,) r r8 fis16-- r
  r8 cis16 (ais, e4-- \beamer gis16) r fis (cis
}

mvtII = \transpose c c' {
  \key b \major
  \time 3/4
  \transposition bes

  \set Score.rehearsalMarkFormatter = \format-mark-circle-numbers

  \mark 44 ais4-- \mp (gis16 e b,) r r8 fis16-- r
  r8 cis16 (ais, e4-- \beamer gis16) r fis (cis
  \poop
  \mark 45 \poop \poop

  \mark 46 \poop \poop
  \mark 47 \poop

  ais4-- \fadeOut gis16 e b,) r r8 fis16-- r
  r8 cis16 (ais, e4-- \beamer gis16) r fis (cis) \!
  R2.*2

  \mark 48 R2.*4
  \mark 49 R2.*4
  \mark 50 R2.*2
  \mark 51 R2.*4
  \mark 52 R2.*2

  \mark 53 R2.*2
  \mark 54 r4 r8 b16 \fadeIn b b b b b
  b b b b b b b b b b b b

  b b b b b b b b b b b b
  b \f b b b b b b b b b b b
  b b b b b b b \fadeOut b b b b b
  b b b b b b b b \! r4

  \mark 55 r4 r8 dis'16 \fadeIn dis' dis' dis' dis' dis'
  dis' dis' dis' dis' dis' dis' dis' dis' dis' dis' dis' dis'
  dis' \f dis' dis' dis' dis' dis' dis' dis' dis' dis' dis' dis'
  dis' dis' dis' dis' dis' dis' dis' dis' dis' dis' dis' dis'

  dis' \fadeOut dis' dis' dis' dis' dis' dis' dis' dis' dis' dis' dis'
  dis' dis' dis' dis' dis' dis' dis' dis' \! r4
  \mark 56 r4 r8 fis'16 \fadeIn fis' fis' fis' fis' fis'
  fis' fis' fis' fis' fis' fis' fis' fis' fis' fis' fis' fis'

  fis' fis' fis' fis' fis' fis' fis' fis' fis' fis' fis' fis'
  fis' \f fis' fis' fis' fis' fis' fis' fis' fis' fis' fis' fis'
  fis' fis' fis' fis' fis' fis' fis' fis' fis' fis' fis' fis'
  fis' fis' fis' fis' fis' \fadeOut fis' fis' fis' fis' fis' fis' fis'

  fis' fis' fis' fis' fis' fis' fis' fis' fis' fis' fis' fis'
  fis' fis' fis' fis' \! r4 r4
  \mark 57 r4 r8 b16 \fadeIn b b b b b
  b b b b b b b b b b b b

  b b b b b b b b b b b b
  b \f b b b b b b b b b b b
  b b b b b \fadeOut b b b b b b b
  b b b b b b b b \! r4

  \mark 58 r4 r8 dis'16 \fadeIn dis' dis' dis' dis' dis'
  dis' dis' dis' dis' dis' dis' dis' dis' dis' dis' dis' dis'
  dis' \f dis' dis' dis' dis' dis' dis' dis' dis' dis' dis' dis'
  dis' dis' dis' dis' dis' dis' dis' dis' dis' dis' dis' dis'

  dis' \fadeOut dis' dis' dis' dis' dis' dis' dis' dis' dis' dis' dis'
  dis' dis' dis' dis' dis' dis' dis' dis' \! r4
  \mark 59 r4 r8 fis'16 \fadeIn fis' fis' fis' fis' fis'
  fis' fis' fis' fis' fis' fis' fis' fis' fis' fis' fis' fis'

  fis' fis' fis' fis' fis' fis' fis' fis' fis' fis' fis' fis'
  fis' \f fis' fis' fis' fis' fis' fis' fis' fis' fis' fis' fis'
  fis' fis' fis' fis' fis' fis' fis' fis' fis' fis' fis' fis'
  fis' \fadeOut fis' fis' fis' fis' fis' fis' fis' fis' fis' fis' fis'

  fis' fis' fis' fis' fis' fis' fis' fis' fis' fis' fis' fis' \!
  r4 r4 r4
  \mark 60 R2.*6
  \bar "||"

  \pageBreak
}

mvtIII = {}

clarinet_VIII = #(make-part longName
  #{ \new Staff \with { instrumentName = #shortNameMvtI } \mvtI #}
  #{ \new Staff \with { instrumentName = #shortName } \mvtII #}
  #{ \new Staff \with { instrumentName = #shortName } \mvtIII #}
)

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
