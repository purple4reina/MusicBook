\include "common.ly"

boop = { es'4-- ~es'8 r g c r f, r bes r aes }
beep = { d'4-- ~d'8 r g c r f, r bes r aes }

clarinet_I = \transpose c c'' {
  \key aes \major
  \time 3/2

  \set Score.rehearsalMarkFormatter = \format-mark-circle-numbers
  \set Timing.beatStructure = 1,1,1

  aes8---. \fadeIn aes---. aes---. aes---. aes---. aes---. aes \sim aes aes aes aes aes
  aes8 aes aes aes aes aes aes aes aes aes aes aes
  aes8 \mf aes aes aes aes aes aes aes aes aes aes aes

  aes8 aes aes aes aes aes aes aes aes aes aes aes
  aes8 aes aes aes aes aes aes aes aes aes aes aes
  aes8 \fadeOut aes aes aes aes aes aes aes aes aes aes aes
  \mark 1 aes8 aes aes aes aes aes aes aes \! r2

  r2 r4 aes8---. \fadeIn aes---. aes---. aes---. aes---. aes---.
  aes \sim aes aes aes aes aes aes \mf aes aes aes aes aes
  aes \fadeOut aes aes aes aes aes aes aes aes aes aes aes \!
  \time 2/2 r2 r2

  \mark 2 \time 3/2 r4 d8---. \fadeIn d---. d---. d---. d \sim d d d d d
  d d d d d d d d d d d d
  d \mf d d d d d d d d d d d

  d d d d d d d d d d d d
  d \fadeOut d d d d d d d d d d d
  d d d d \! r2 r2

  \mark 3 r4 es8---. \fadeIn es---. es---. es---. es \sim es es es es es
  es es es es es es es es es \mf es es es
  es es es es es es es es es es es es

  es es es es es es es es es es es es
  es es es es es es es es es es es es
  \time 2/2 es es es es es \fadeOut es es es

  \mark 4 \time 3/2 es es es es es es es es es es es es \!
  r2 r2 r4 aes8---. \fadeIn aes---.
  aes---. aes---. aes---. aes---. aes \sim aes aes aes aes aes aes aes

  aes \mf aes aes aes aes aes aes aes aes aes aes aes
  aes aes aes aes aes aes aes aes aes aes aes aes
  aes \fadeOut aes aes aes aes aes aes aes aes aes aes aes

  \mark 5 aes aes aes aes aes aes aes aes \! r2
  r2 r4 aes8---. \fadeIn aes---. aes---. aes---. aes---. aes---.
  aes \sim aes aes aes aes aes aes \mf aes aes aes aes aes
  aes \fadeOut aes aes aes aes aes aes aes aes aes aes aes \!

  \time 2/2 r2 r2
  \mark 6 \time 3/2 r4 d8---. \fadeIn d---. d---. d---. d---. d---. d \sim d d d
  d d d d d d d d d d d d

  d \mf d d d d d d d d d d d
  d d d d d d d d d d d d
  d \fadeOut d d d d d d d d d d d
  d d d d \! r2 r2

  \mark 7 r4 es8---. \fadeIn es---. es---. es---. es---. es---. es \sim es es es
  es es es es es es es es es es es es
  es \mf es es \fadeOut es es es es es es es es es \!

  r2 r2 r2
  \pageBreak
  es'4-- \fadeIn ^\markup { \italic "tenuto sempre" } ~es'8 r g c r f, r bes r aes
  \boop \boop

  \mark 8 \boop \break \boop
  \mark 9 es'4-- \mf ~es'8 r g c r f, r bes r aes
  \boop \boop \break
  \mark 10 \boop \boop

  \mark 11 \boop
  \mark 12 \boop \break \boop
  \mark 13 \boop \boop

  \mark 14 \boop \break
  \mark 15 \boop \boop \boop
  \mark 16 \boop \break \boop

  \mark 17 \boop \boop
  \mark 18 \boop \break \boop
  \mark 19 \boop

  \mark 20 \boop \boop \break \boop
  \mark 21 \boop \boop \boop \break
  \mark 22 \boop \boop

  \mark 23 \boop \boop \break
  \mark 24 \boop
  \mark 25 \boop \boop \boop \break

  \mark 26 \boop \boop
  \mark 27 \boop
  \mark 28 \boop \break \boop

  \mark 29 \boop \boop
  \mark 30 \boop \break
  \mark 31 \boop \boop \boop

  \mark 32 \boop \break \boop
  \mark 33 \boop \boop
  \mark 34 \boop \break \boop

  \mark 35 \boop \boop
  \mark 36 \boop \break \boop
  \mark 37 \boop

  \boop \boop \break \boop \boop \boop \boop \break

  \boop
  \mark 38 \boop \boop

  \boop \boop \boop \break \boop \boop \boop

  \mark 39 \boop \break \boop \boop

  \boop \boop \break \boop

  \mark 40 \boop \boop \boop \break \boop

  \boop \boop \boop \break \boop

  \mark 41 \boop \boop \boop \break \boop

  \boop \boop \boop \break \boop

  \mark 42 \beep \beep \beep \break

  \beep \beep \beep

  \mark 43 \beep
  d'4-- \fadeOut ~d'8 r g c r f, r bes r aes
  \beep \!

  \bar "||"
  \pageBreak
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
