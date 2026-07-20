\include "common.ly"

boop = { c'4-- ~c'8 r es aes, r des r g r f }
beep = { bes4-- ~bes8 r es aes, r c r g r f }

clarinet_IV = \transpose c c' {
  \key aes \major
  \time 3/2
  \transposition bes

  \set Score.rehearsalMarkFormatter = \format-mark-circle-numbers
  \set Timing.beatStructure = 1,1,1

  aes8 \fadeIn aes aes aes aes aes aes aes aes aes aes aes
  aes aes aes aes aes aes aes aes aes aes aes aes
  aes \f aes aes aes aes aes aes aes aes aes aes aes

  aes aes aes aes aes aes aes aes aes aes aes aes
  aes aes aes aes aes aes aes aes aes \fadeOut aes aes aes
  aes aes aes aes aes aes aes aes \! r2
  \mark 1 r2 r2 r4 g8 \fadeIn g

  g g g g g g g g g g g g
  g \f g g g g g g g g g g g
  g g g g g g g g g g g g
  \time 2/2 g g g \fadeOut g g g g g

  \mark 2 \time 3/2 g g g g g g g g \! r2
  r2 r2 r4 aes8 \fadeIn aes
  aes aes aes aes aes aes aes aes aes aes aes aes

  aes \f aes aes aes aes aes aes aes aes aes aes aes
  aes aes aes aes aes aes aes aes aes aes aes aes
  aes aes aes aes aes aes aes aes aes \fadeOut aes aes aes

  \mark 3 aes aes aes aes aes aes aes aes aes aes aes aes \!
  r2 r2 r4 g8 \fadeIn g
  g g g g g g g g g g g g

  g \f g g g g g g g g g g g
  g g g g g g g g g g g g
  \time 2/2 g g g g g \fadeOut g g g

  \mark 4 \time 3/2 g g g g g g g g g g g g \!
  r2 r2 r4 aes8 \fadeIn aes
  aes aes aes aes aes aes aes aes aes aes aes aes

  aes \f aes aes aes aes aes aes aes aes aes aes aes
  aes aes aes aes aes aes aes aes aes \fadeOut aes aes aes
  aes aes aes aes aes aes aes aes \! r2

  \mark 5 r2 r2 r4 g8 \fadeIn g
  g g g g g g g g g g g g
  g \f g g g g g g g g g g g
  g g g g g g g g g g g g

  \time 2/2 g \fadeOut g g g g g g g
  \mark 6 \time 3/2 g g g g g g g g \! r2
  r2 r2 r4 aes8 \fadeIn aes

  aes aes aes aes aes aes aes aes aes aes aes aes
  aes \f aes aes aes aes aes aes aes aes aes aes aes
  aes aes aes aes aes aes aes aes aes aes aes aes
  aes aes aes aes aes aes aes \fadeOut aes aes aes aes aes

  \mark 7 aes aes aes aes aes aes aes aes aes aes aes aes \!
  r2 r2 r4 g8 \fadeIn g
  g g g g g g g g g g g g

  g \f g g g g g g g g g g g
  g g g g g g g g g g g g
  g \fadeOut g g g g g g g g g g g
  g g g g g g g g g g g g \!

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

  \pageBreak
  \mark 23 c'4-- \fadeIn ~c'8 \ten r es aes, r des r g r f
  \boop
  \mark 24 c'4-- \mf ~c'8 r es aes, r des r g r f
  \mark 25 \boop \break \boop \boop

  \mark 26 \boop \boop \break
  \mark 27 \boop
  \mark 28 \boop \boop

  \mark 29 \boop \break \boop
  \mark 30 \boop
  \mark 31 \boop \boop \break \boop

  \mark 32 \boop \boop
  \mark 33 \boop \break \boop
  \mark 34 \boop \boop

  \mark 35 \boop \break \boop
  \mark 36 \boop \boop
  \mark 37 \boop \break

  \boop \boop \boop \boop \break \boop \boop

  \boop \mark 38 \boop \break \boop

  \boop \boop \boop \break \boop \boop \boop

  \mark 39 \beep \break \beep \beep

  \beep \beep \break \beep

  \mark 40 \boop \boop \boop \break

  \boop \boop \boop \boop \boop \break

  \mark 41 \boop \boop \boop \boop \break

  \boop \boop \boop \boop \break

  \mark 42 \beep \beep \beep

  \beep \beep \beep

  \mark 43 \beep
  bes4-- \fadeOut ~bes8 r es aes, r c r g r f
  \beep \!

  \bar "||"
  \pageBreak
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
