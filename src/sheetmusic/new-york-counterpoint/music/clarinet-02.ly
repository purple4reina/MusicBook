\include "common.ly"

longName  = "Clarinet 2 in B♭"
shortName = "Cl.2"

boop = { f,8 r aes r es' bes-- ~bes4 r8 g c r }
beep = { f,8 r aes r d' bes-- ~bes4 r8 g c r }

mvtI = \transpose c c'' {
  \key aes \major
  \time 3/2
  \transposition bes

  \set Score.rehearsalMarkFormatter = \format-mark-circle-numbers
  \set Timing.beatStructure = 1,1,1

  r2 r2 r4 g8---. \fadeIn g---.
  g---. g---. g---. g---. g \sim g g g g g g g
  g g g g g g g g g g g g

  g \mf g g g g g g g g \fadeOut g g g
  g g g g g g g g g g g g
  g g g g \! r2 r2
  \mark 1 r4 es8---. \fadeIn es---. es---. es---. es---. es---. es \sim es es es

  es es es es es es es es es es es es
  es \mf es es es es es es es es es es es
  es es es es es es es es es es es es
  \time 2/2 es es es \fadeOut es es es es es

  \mark 2 \time 3/2 es es es es es es es es \! r2
  r4 g8---. \fadeIn g---. g---. g---. g---. g---. g \sim g g g
  g \mf g g g g g g g g g g g

  g g g g g g g g g g g g
  g g g g g g g g g g g g
  g g g g g g g g g \fadeOut g g g

  \mark 3 g g g g g g g g g g g g \!
  r2 r2 r4 f8---. \fadeIn f---.
  f---. f---. f---. f---. f \sim f f f f f f f

  f \mf f f f f f f f f f f f
  f \fadeOut f f f f f f f f f f f \!
  \time 2/2 r2 r2

  \mark 4 \time 3/2 r4 g8---. \fadeIn g---. g---. g---. g---. g---. g \sim g g g
  g g g g g g g g g \mf g g g
  g g g g g g g g g g g g

  g g g g g g g g g g g g
  g \fadeOut g g g g g g g g g g g
  g g g g \! r2 r2

  \mark 5 r4 es8---. \fadeIn es---. es---. es---. es---. es---. es \sim es es es
  es es es es es es es es es es es es
  es \mf es es es es es es es es es es es
  es es es es es es es es es es es es

  \time 2/2 es \fadeOut es es es es es es es
  \mark 6 \time 3/2 es es es es es es es es \! r2
  r4 g8---. \fadeIn g---. g---. g---. g---. g---. g \sim g g g

  g \mf g g g g g g g g g g g
  g g g g g g g g g g g g
  g g g g g g g g g g g g
  g g g g g g g \fadeOut g g g g g

  \mark 7 g g g g g g g g g g g g \!
  r2 r2 r4 f8---. \fadeIn f---.
  f---. f---. f---. f---. f \sim f f f f f f f

  f \mf f f f f f f f f f f f
  f f f f f f f f f f f f
  f \fadeOut f f f f f f f f f f f
  f f f f f f f f f f f f \!

  \mark 8 R1.*2
  \mark 9 R1.*3
  \mark 10 R1.*2

  \mark 11 R1.
  \mark 12 R1.*2
  \pageBreak
  \mark 13 f,8 \fadeIn r ^\markup { \italic "tenuto sempre" } aes r es' bes-- ~bes4 r8 g c r
  \boop

  \mark 14 f,8 \mf r aes r es' bes-- ~bes4 r8 g c r
  \mark 15 \boop \break \boop \boop
  \mark 16 \boop \boop

  \mark 17 \boop \boop
  \mark 18 \boop \boop \break
  \mark 19 \boop

  \mark 20 \boop \boop \boop \break
  \mark 21 \boop \boop \boop
  \mark 22 \boop \boop

  \mark 23 \boop \boop
  \mark 24 \boop \break
  \mark 25 \boop \boop \boop

  \mark 26 \boop \break \boop
  \mark 27 \boop
  \mark 28 \boop \boop \break

  \mark 29 \boop \boop
  \mark 30 \boop
  \mark 31 \boop \break \boop \boop

  \mark 32 \boop \boop \break
  \mark 33 \boop \boop
  \mark 34 \boop \boop \break

  \mark 35 \boop \boop
  \mark 36 \boop \boop \break
  \mark 37 \boop

  \boop \boop \boop \break \boop \boop \boop

  \boop \break \mark 38 \boop \boop

  \boop \boop \break \boop \boop \boop \boop \break

  \mark 39 \beep \beep \beep

  \beep \break \beep \beep

  \mark 40 \boop \boop \break \boop \boop

  \boop \boop \break \boop \boop

  \mark 41 \boop \boop \break \boop \boop

  \boop \boop \break \boop \boop

  \mark 42 \beep \beep \break \beep

  \beep \beep \beep \break

  \mark 43 \beep f,8 \fadeOut r aes r d' bes-- ~bes4 r8 g c r \beep \!

  \bar "||"
  \pageBreak
}

poop = {
  ais16 (fis cis'8-- ~cis' b16 gis e) r8.
  ais16-- r8. fis16 (cis gis8-- ~gis fis16) r
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

  ais16 \fadeIn (fis cis'8-- ~cis' b16 gis e) r8.
  ais16-- r8. fis16 (cis gis8-- ~gis fis16) r
  ais16 \mp (fis cis'8-- ~cis' b16 gis e) r8.
  ais16-- r8. fis16 (cis gis8-- ~gis fis16) r

  \mark 48 \poop \poop
  \mark 49 \poop

  \poop
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
  \mark 60 \poop

  ais16 \fadeOut (fis cis'8-- ~cis' b16 gis e) r8.
  ais16-- r8. fis16 (cis gis8-- ~gis fis16) r

  ais16 (fis cis'8-- ~cis' b16 gis e) \! r8.
  r4 r4 r4
  \bar "||"

  \pageBreak
}

mvtIII = {}

clarinet_II = #(make-part longName
  #{ \new Staff \with { instrumentName = #shortName } \mvtI #}
  #{ \new Staff \with { instrumentName = #shortName } \mvtII #}
  #{ \new Staff \with { instrumentName = #shortName } \mvtIII #}
)

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
