\include "common.ly"

boop = { es8 aes, r f, r g r c' f4-- ~f8 r }
beep = { es8 aes, r f, r g r bes f4-- ~f8 r }

clarinet_VI = \transpose c c' {
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

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
