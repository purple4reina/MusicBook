\include "common.ly"

longName  = "Clarinet 7 in B♭"
shortName = "Cl.7"

mvtI = \transpose c c'' {
  \key aes \major
  \time 3/2
  \transposition bes

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
  \mark 34 R1.*2

  \mark 35 R1.*2
  \mark 36 R1.*2
  \mark 37 r4 es8 \fadeIn es es es es es es es es es

  es es es es es es es es es es es es
  es es es es es es es es es es es es
  es \f es es es es es es es es es es es
  es es es es es es es es es es es es
  es \fadeOut es es es es es es es es es es es
  es es es es es es es es es es es es \!

  r2 r2 r2
  \mark 38 r4 c8 \fadeIn c c c c c c c c c
  c c c c c c c c c c c c

  c c c c c c c c c c c c
  c \f c c c c c c c c c c c
  c c c c c c c c c c c c
  c \fadeOut c c c c c c c c c c c
  c c c c c c c c c c c c \!
  r2 r2 r2

  \mark 39 r4 d8 \fadeIn d d d d d d d d d
  d d d d d d d d d \f d d d
  d d d d d d d d d d d d

  d d d d d d d \fadeOut d d d d d
  d d d d d d d d d d d d \!
  r2 r2 r2

  \mark 40 r4 es8 \fadeIn es es es es es es es es es
  es es es es es es es es es es es es
  es \f es es es es es es es es es es es
  es es es es es es es es es es es es

  es es es es es es es es es es es es
  es \fadeOut es es es es es es es es es es es
  es es es es es es es es es es es es \!
  r2 r2 r2

  \mark 41 r4 c8 \fadeIn c c c c c c c c c
  c c c c c c c c c c c c
  c \f c c c c c c c c c c c
  c c c c c c c c c c c c

  c c c c c c c c c c c c
  c \fadeOut c c c c c c c c c c c
  c c c c c c c c c c c c \!
  r2 r2 r2

  \mark 42 r4 d8 \fadeIn d d d d d d d d d
  d d d d d d d d d \f d d d
  d d d d d d d d d d d d

  d d d d d d d \fadeOut d d d d d
  d d d d d d d d d d d d \!
  r2 r2 r2

  \mark 43 r2 r2 r2
  r2 r2 r2
  r2 r2 r2

  \bar "||"
  \pageBreak
}

mvtII = {}
mvtIII = {}

clarinet_VII = #(make-part longName
  #{ \new Staff \with { instrumentName = #shortName } \mvtI #}
  #{ \new Staff \with { instrumentName = #shortName } \mvtII #}
  #{ \new Staff \with { instrumentName = #shortName } \mvtIII #}
)

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
