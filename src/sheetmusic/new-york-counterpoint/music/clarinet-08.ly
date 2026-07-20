\include "common.ly"

clarinet_VIII = \transpose c c' {
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

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
