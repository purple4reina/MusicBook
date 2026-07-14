\include "common.ly"

clarinet_I = \transpose c c'' {
  \key aes \major
  \time 3/2

  \set Score.rehearsalMarkFormatter = \format-mark-circle-numbers
  \set Timing.beatStructure = 1,1,1

  aes8---. \fadeIn aes---. aes---. aes---. aes---. aes---. aes \sim aes aes aes aes aes
  aes8 aes aes aes aes aes aes aes aes aes aes aes
  aes8 \mf aes aes aes aes aes aes aes aes aes aes aes

  \bar "||"

  \pageBreak
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
