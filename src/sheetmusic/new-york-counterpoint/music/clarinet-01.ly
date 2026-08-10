\include "common.ly"

longName  = "Clarinet 1 in B♭"
shortName = "Cl.1"

boop = { es'4-- ~es'8 r g c r f, r bes r aes }
beep = { d'4-- ~d'8 r g c r f, r bes r aes }

mvtI = \transpose c c'' {
  \key aes \major
  \time 3/2
  \transposition bes

  \set Score.rehearsalMarkFormatter = \format-mark-circle-numbers
  \set Timing.beatStructure = 1,1,1

  aes8---. \fadeIn aes---. aes---. aes---. aes \sim aes aes aes aes aes aes aes
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

  \mark 2 \time 3/2 r4 d8---. \fadeIn d---. d---. d---. d---. d---. d \sim d d d
  d d d d d d d d d d d d
  d \mf d d d d d d d d d d d

  d d d d d d d d d d d d
  d \fadeOut d d d d d d d d d d d
  d d d d \! r2 r2

  \mark 3 r4 es8---. \fadeIn es---. es---. es---. es---. es---. es \sim es es es
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

  \boop \break \boop \boop \boop \boop \break \boop

  \mark 39 \beep \beep \beep \break

  \beep \beep \beep

  \mark 40 \boop \break \boop \boop \boop

  \boop \break \boop \boop \boop

  \mark 41 \boop \break \boop \boop \boop

  \boop \break \boop \boop \boop

  \mark 42 \beep \break \beep \beep

  \beep \beep \break \beep

  \mark 43 \beep
  d'4-- \fadeOut ~d'8 r g c r f, r bes r aes
  \beep \!

  \bar "||"
  \pageBreak
}

poop = {
  cis'4-- b16 gis e) r16 r8 ais16-- r
  r8 fis16 (cis gis4-- \beamer b16) r ais (fis
}

mvtII = \transpose c c'' {
  \key b \major
  \time 3/4
  \transposition bes

  \set Score.rehearsalMarkFormatter = \format-mark-circle-numbers

  \mark 44 R2.*4
  \mark 45 R2.*4

  \mark 46 R2.*4
  \mark 47 R2.*2

  cis'4-- \fadeIn (b16 gis e) r16 r8 ais16-- r
  r8 fis16 (cis gis4-- \beamer b16) r ais (fis
  cis'4-- \mp b16 gis e) r16 r8 ais16-- r
  r8 fis16 (cis gis4-- \beamer b16) r ais (fis

  \mark 48 \poop \poop
  \mark 49 \poop \poop
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
  \mark 60 \poop _\markup { \italic "(no fade out)" } \poop

  cis'4-- b16 gis e) r16 r8 ais16-- r
  r8 fis16 (cis gis4--) r4
  \bar "||"

  \pageBreak
}

mvtIII = \transpose c c'' {
  \key aes \major
  \time 3/2
  \transposition bes

  \set Score.rehearsalMarkFormatter = \format-mark-circle-numbers
  \set Timing.beatStructure = 1,1,1

  \mark 61 R1.*4
  \mark 62 R1.*4
  \mark 63 R1.*2
  \mark 64 R1.*2
  \mark 65 R1.*6
  \mark 66 R1.*6
  \mark 67 R1.*4
  \mark 68 R1.*2
  \mark 69 R1.*2
  \mark 70 R1.*6
  \mark 71 R1.*6
  \mark 72 R1.*4
  \mark 73 R1.*4
  \mark 74 R1.*4
  \mark 75 R1.*4
  \mark 76 R1.*4
  \mark 77 R1.*2
  \mark 78 R1.*2
  \mark 79 R1.*2
  \mark 80 R1.*2
  \mark 81 R1.*2
  \mark 82 R1.*2
  \mark 83 R1.*2
  \mark 84 R1.*2
  \mark 85 R1.*2
  \mark 86 R1.*2
  \mark 87 R1.*2
  \mark 88 R1.*6

  \mark 89 es'8 \mf r b r des' aes r b r es r aes
  es'4-- ~es'8 r b des' r aes r b es r
  es'8 r b r des' aes r b r es r aes
  es'4-- ~es'8 r b des' r aes r b es r
  es'8 r b r des' aes r b r es r aes
  es'4-- ~es'8 r b des' r aes r b es r

  \mark 90 es'8 r b r des' aes r b r es r aes
  es'4-- ~es'8 r b des' r aes r b es r
  es'8 r b r des' aes r b r es r aes
  es'4-- ~es'8 r b des' r aes r b es r
  es'8 r b r des' aes r b r es r aes
  es'4-- ~es'8 r b des' r aes r b es r
  es'8 r b r des' aes r b r es r aes
  es'4-- ~es'8 r b des' r aes r b es r

  es'8-^ r r4 r2 r2
  \bar "|."
}

clarinet_I = #(make-part longName
  #{ \new Staff \with { instrumentName = #shortName } \mvtI #}
  #{ \new Staff \with { instrumentName = #shortName } \mvtII #}
  #{ \new Staff \with { instrumentName = #shortName } \mvtIII #}
)

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
