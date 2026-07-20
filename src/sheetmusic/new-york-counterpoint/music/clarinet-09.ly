\include "common.ly"

clarinet_IX = \transpose c c' {
  \key aes \major
  \time 3/2
  \transposition bes,

  \set Score.rehearsalMarkFormatter = \format-mark-circle-numbers
  \set Timing.beatStructure = 1,1,1

  r2 ^\markup { \bold "Bass Clarinet" } r2 r2
  r2 r2 r4 f8-. \fadeIn f-.
  f-. f-. f-. f-. f \sim f f f f f f f

  f \f f f f f f f f f f f f
  f f f f f f f f f \fadeOut f f f
  f f f f f f f f \! r2
  \mark 1 r2 r2 r4 aes8-. \fadeIn aes-.

  aes-. aes-. aes-. aes-. aes \sim aes aes aes aes aes aes aes
  aes \f aes aes aes aes aes aes aes aes aes aes aes
  aes aes aes aes aes \fadeOut aes aes aes aes aes aes aes
  \time 2/2 aes aes aes aes \! r2

  \mark 2 \time 3/2 r2 r2 r2
  r4 c'8 \fadeIn c' c' c' c' c' c' c' c' c'
  c' \f c' c' c' c' c' c' c' c' c' c' c'

  c' c' c' c' c' c' c' c' c' c' c' c'
  c' c' c' c' c' \fadeOut c' c' c' c' c' c' c'
  c' c' c' c' c' c' c' c' \! r2

  \mark 3 r2 r2 r4 aes8 \fadeIn aes
  aes aes aes aes aes aes aes aes aes aes aes aes
  aes \f aes aes aes aes aes aes aes aes aes aes aes

  aes aes aes aes aes aes aes aes aes aes aes aes
  aes \fadeOut aes aes aes aes aes aes aes aes aes aes aes
  \time 2/2 aes aes aes aes \! r2

  \mark 4 \time 3/2 r2 r2 r4 f8 \fadeIn f
  f f f f f f f f f f f f
  f \f f f f f f f f f f f f

  f f f f f f f f f f f f
  f f f f f f f f f \fadeOut f f f
  f f f f f f f f \! r2

  \mark 5 r2 r2 r4 aes8 \fadeIn aes
  aes aes aes aes aes aes aes aes aes aes aes aes
  aes \f aes aes aes aes aes aes aes aes aes aes aes
  aes aes aes aes aes aes aes \fadeOut  aes aes aes aes aes

  \time 2/2 aes aes aes aes \! r2
  \mark 6 \time 3/2 r2 r2 r2
  r4 c'8 \fadeIn c' c' c' c' c' c' c' c' c'

  c' \f c' c' c' c' c' c' c' c' c' c' c'
  c' c' c' c' c' c' c' c' c' c' c' c'
  c' c' c' c' c' c' c' \fadeOut c' c' c' c' c'
  c' c' c' c' c' c' c' c' \! r2

  \mark 7 r2 r2 r4 aes8 \fadeIn aes
  aes aes aes aes aes aes aes aes aes aes aes aes
  aes \f aes aes aes aes aes aes aes aes aes aes aes

  aes aes aes aes aes aes aes aes aes aes aes aes
  aes \fadeOut aes aes aes aes aes aes aes aes aes aes aes
  aes aes aes aes aes aes aes aes aes aes aes aes \!
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

  r4 des'8 \fadeIn des' des' des' des' des' des' des' des' des'
  des' des' des' des' des' des' des' des' des' des' des' des'
  des' des' des' des' des' des' des' des' des' des' des' des'
  des' \f des' des' des' des' des' des' des' des' des' des' des'
  des' des' des' des' des' des' des' des' des' des' des' des'
  des' \fadeOut des' des' des' des' des' des' des' des' des' des' des'

  des' des' des' des' des' des' des' des' des' des' des' des' \!
  \mark 38 r2 r2 r2
  r4 f'8 \fadeIn f' f' f' f' f' f' f' f' f'

  f' f' f' f' f' f' f' f' f' f' f' f'
  f' f' f' f' f' f' f' f' f' f' f' f'
  f' \f f' f' f' f' f' f' f' f' f' f' f'
  f' f' f' f' f' f' f' f' f' f' f' f'
  f' \fadeOut f' f' f' f' f' f' f' f' f' f' f'
  f' f' f' f' f' f' f' f' f' f' f' f' \!

  \mark 39 r2 r2 r2
  r4 aes'8 \fadeIn aes' aes' aes' aes' aes' aes' aes' aes' aes'
  aes' aes' aes' aes' aes' aes' aes' aes' aes' \f aes' aes' aes'

  aes' aes' aes' aes' aes' aes' aes' aes' aes' aes' aes' aes'
  aes' aes' aes' aes' aes' aes' aes' aes' aes' \fadeOut aes' aes' aes'
  aes' aes' aes' aes' aes' aes' aes' aes' aes' aes' aes' aes' \!

  \mark 40 r2 r2 r2
  r4 des'8 \fadeIn des' des' des' des' des' des' des' des' des'
  des' des' des' des' des' des' des' des' des' des' des' des'
  des' \f des' des' des' des' des' des' des' des' des' des' des'

  des' des' des' des' des' des' des' des' des' des' des' des'
  des' des' des' des' des' des' des' des' des' des' des' des'
  des' \fadeOut des' des' des' des' des' des' des' des' des' des' des'
  des' des' des' des' des' des' des' des' des' des' des' des' \!

  \mark 41 r2 r2 r2
  r4 f'8 \fadeIn f' f' f' f' f' f' f' f' f'
  f' f' f' f' f' f' f' f' f' f' f' f'
  f' \f f' f' f' f' f' f' f' f' f' f' f'

  f' f' f' f' f' f' f' f' f' f' f' f'
  f' f' f' f' f' f' f' f' f' f' f' f'
  f' \fadeOut f' f' f' f' f' f' f' f' f' f' f'
  f' f' f' f' f' f' f' f' f' f' f' f' \!

  \mark 42 r2 r2 r2
  r4 aes'8 \fadeIn aes' aes' aes' aes' aes' aes' aes' aes' aes'
  aes' aes' aes' aes' aes' aes' aes' aes' aes' \f aes' aes' aes'

  aes' aes' aes' aes' aes' aes' aes' aes' aes' aes' aes' aes'
  aes' aes' aes' aes' aes' aes' aes' aes' aes' \fadeOut aes' aes' aes'
  aes' aes' aes' aes' aes' aes' aes' aes' aes' aes' aes' aes' \!

  \mark 43 r2 r2 r2
  r2 r2 r2
  r2 r2 r2

  \bar "||"
  \pageBreak
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
