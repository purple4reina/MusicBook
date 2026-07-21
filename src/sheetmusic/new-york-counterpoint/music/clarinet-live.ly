\include "common.ly"

longName  = "Live Clarinet in B♭"
shortName = "Live"

mvtI = \transpose c c''' {
  \key aes \major
  \time 3/2
  \transposition bes

  \set Score.rehearsalMarkFormatter = \format-mark-circle-numbers
  \set Timing.beatStructure = 1,1,1

  r1 r4 es8---. \fadeIn es---.
  es8---. es---. es---. es---. es \sim es es es es es es es

  es8 es es es es es es es es es es es
  es8 \mf es es es es es es es es es es es
  es8 \fadeOut es es es es es es es es es es es

  es8 es es es \! r2 r2
  \mark 1 r4 c8---. \fadeIn c---. c---. c---. c---. c---. c \sim c c c
  c8 c c c c c c c c c c c
  c8 \mf c c c c c c c c c c c

  c8 \fadeOut c c c c c c c c c c c \!
  \time 2/2 r2 r2
  \time 3/2 \mark 2 r4 bes,8---. \fadeIn bes,---. bes,---. bes,---. bes,---.  bes,---. bes, \sim bes, bes, bes,

  bes,8 bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes,
  bes,8 \mf bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes,
  bes,8 bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes,
  bes,8 \fadeOut bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes,

  bes,8 bes, bes, bes, \! r2 r2
  \mark 3 r4 c8---. \fadeIn c---. c---. c---. c---. c---. c \sim c c c
  c c c c c c c c c \mf c c c

  c c c c c c c c c c c c
  c c c c c c c c c c c c
  c \fadeOut c c c c c c c c c c c \!
  \time 2/2 r2 r2

  \mark 4 \time 3/2 r4 es8---. \fadeIn es---. es---. es---. es---. es---. es \sim es es es
  es8 es es es es es es es es \mf es es es
  es8 es es es es es es es es es es es
  es8 es es es es es es es es es es es

  es8 \fadeOut es es es es es es es es es es es
  es es es es \! r2 r2
  \mark 5 r4 c8---. \fadeIn c---. c---. c---. c---. c---. c \sim c c c

  c8 c c c c c c c c c c c
  c8 \mf c c c c c c c c c c c
  c8 \fadeOut c c c c c c c c c c c \!
  \time 2/2 r2 r2

  \mark 6 \time 3/2 r4 bes,8---. \fadeIn bes,---. bes,---. bes,---. bes,---.  bes,---. bes, \sim bes, bes, bes,
  bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes,

  bes, \mf bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes,
  bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes,
  bes, \fadeOut bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes,

  bes, bes, bes, bes, \! r2 r2
  \mark 7 r4 c8---. \fadeIn c---. c---. c---. c---. c---. c \sim c c c
  c c c c c c c c c c c c

  c \mf c c c c c c c c c c c
  c c c c c c c c c c c c
  c c c c c c c c c c c c
  c \fadeOut c c c c c c c c c c c

  c c c c c c c c c c c c \!
  \mark 8 r2 r2 r2
  r2 r2 r2

  \pageBreak

  \mark 9 r4 aes,8 ^\markup { \italic "tenuto sempre" } \f r es r r4 r2
  r4 aes,8 r es r r4 r2
  r4 aes,8 r es r r4 r2
  \mark 10 r4 aes,8 r es bes,-- ~bes,4 r2
  r4 aes,8 r es bes,-- ~bes,4 r2
  \mark 11 r4 aes,8 r es bes,-- ~bes,4 r8 g, c, r

  \mark 12 f,,8 r aes, r es bes,-- ~bes,4 r8 g, c, r
  f,,8 r aes, r es bes,-- ~bes,4 r8 g, c, r
  \mark 13 f,,8 \fadeOut r aes, r es bes,-- ~bes,4 r8 g, c, r
  f,,8 r aes, r es bes,-- ~bes,4 r8 g, c, \! r
  \mark 14 r2 r2 r2
  \mark 15 r2 r2 aes,4-- \f ~aes,8 r
  r2 r2 aes,4-- ~aes,8 r
  r2 r2 aes,4-- ~aes,8 r

  \mark 16 g,8 c, r4 r2 aes,4-- ~aes,8 r
  g,8 c, r4 r2 aes,4-- ~aes,8 r
  \mark 17 g,8 \f c, r f,, r bes, r es aes,4-- ~aes,8 r
  g,8 c, r f,, r bes, r es aes,4-- ~aes,8 r
  \mark 18 g,8 \fadeOut c, r f,, r bes, r es aes,4-- ~aes,8 r
  g,8 c, r f,, r bes, r es aes,4-- ~aes,8 \! r
  \mark 19 r2 r2 r2

  \mark 20 r2 r2 r8 g,, \f r f,,
  r2 r2 r8 g,, r f,,
  r2 r2 r8 g,, r f,,
  \mark 21 r2 es,,8 aes,,, r4 r8 g,, r f,,
  r2 es,,8 aes,,, r4 r8 g,, r f,,
  r2 es,,8 aes,,, r4 r8 g,, r f,,
  \mark 22 c,4-- ~c,8 r es,, aes,,, r des,, r g,, r f,,
  c,4-- ~c,8 r es,, aes,,, r des,, r g,, r f,,

  \mark 23 c,4-- \fadeOut ~c,8 r es,, aes,,, r des,, r g,, r f,,
  c,4-- ~c,8 r es,, aes,,, r des,, r g,, r f,, \!
  \mark 24 r2 r2 r2
  \mark 25 r4 f,,8 \f r bes,, r r4 r2
  r4 f,,8 r bes,, r r4 r2
  r4 f,,8 r bes,, r r4 r2
  \mark 26 r4 f,,8 r bes,, g,,-- ~g,,4 r2
  r4 f,,8 r bes,, g,,-- ~g,,4 r2

  \mark 27 r4 f,,8 r bes,, g,,-- ~g,,4 r8 es,, aes,,, r
  \mark 28 f,,,8 r f,, r bes,, g,,-- ~g,,4 r8 es,, aes,,, r
  f,,,8 r f,, r bes,, g,,-- ~g,,4 r8 es,, aes,,, r
  \mark 29 f,,,8 \fadeOut r f,, r bes,, g,,-- ~g,,4 r8 es,, aes,,, r
  f,,,8 r f,, r bes,, g,,-- ~g,,4 r8 es,, aes,,, \! r

  \mark 30 r2 r2 r2
  \mark 31 r2 r2 f,,4-- \f ~f,,8 r
  r2 r2 f,,4-- ~f,,8 r
  r2 r2 f,,4-- ~f,,8 r
  \mark 32 es,,8 aes,,, r4 r2 f,,4-- ~f,,8 r
  es,,8 aes,,, r4 r2 f,,4-- ~f,,8 r
  \mark 33 es,,8 aes,,, r f,,, r g,, r c, f,,4-- ~f,,8 r
  es,,8 aes,,, r f,,, r g,, r c, f,,4-- ~f,,8 r

  \mark 34 es,,8 \fadeOut aes,,, r f,,, r g,, r c, f,,4-- ~f,,8 r
  es,,8 aes,,, r f,,, r g,, r c, f,,4-- ~f,,8 \! r
  \mark 35 r2 r2 r2
  r2 r2 r2
  \pageBreak
  \mark 36 es4-- \fadeIn aes,8 r es bes,-- ~bes,4 aes,-- ~aes,8 aes,
  es4-- aes,8 r es bes,-- ~bes,4 aes,-- ~aes,8 aes,

  \mark 37 es4-- aes,8 r es bes,-- ~bes,4 aes,-- ~aes,8 aes,
  es4-- \f aes,8 r es bes,-- ~bes,4 aes,-- ~aes,8 aes,
  es4-- aes,8 r es bes,-- ~bes,4 aes,-- ~aes,8 aes,
  es4-- aes,8 r es bes,-- ~bes,4 aes,-- ~aes,8 aes,
  es4-- aes,8 r es bes,-- ~bes,4 aes,-- ~aes,8 aes,
  es4-- aes,8 r es bes,-- ~bes,4 aes,-- ~aes,8 aes,

  es4-- \fadeOut aes,8 r es bes,-- ~bes,4 aes,-- ~aes,8 aes,
  es4-- aes,8 r es bes,-- ~bes,4 aes,-- ~aes,8 \! r
  \mark 38 r2 r2 r2

  f,,,8 \fadeIn aes,,, r f,,, r aes,,, r des,, r es,, aes,,, r
  f,,,8 aes,,, r f,,, r aes,,, r des,, r es,, aes,,, r
  f,,,8 \f aes,,, r f,,, r aes,,, r des,, r es,, aes,,, r
  f,,,8 aes,,, r f,,, r aes,,, r des,, r es,, aes,,, r
  f,,,8 aes,,, r f,,, r aes,,, r des,, r es,, aes,,, r

  f,,,8 \fadeOut aes,,, r f,,, r aes,,, r des,, r es,, aes,,, r
  f,,,8 aes,,, r f,,, r aes,,, r des,, r es,, aes,,, \! r
  \pageBreak
  \mark 39 r2 r2 r2

  g,8 \fadeIn c, aes, r g, c, r bes, aes, g, c, aes,
  g,8 \f c, aes, r g, c, r bes, aes, g, c, aes,
  g,8 c, aes, r g, c, r bes, aes, g, c, aes,
  g,8 c, aes, r g, c, r bes, \fadeOut aes, g, c, aes,

  g,8 c, aes, r g, c, r bes, aes, g, c, aes, \!
  \mark 40 r2 r2 r2
  f,,8 \fadeIn c, r f,, bes,, r g,, c, r g, c, r

  f,,8 c, r f,, bes,, r g,, c, r g, c, r
  f,,8 \f c, r f,, bes,, r g,, c, r g, c, r
  f,,8 c, r f,, bes,, r g,, c, r g, c, r
  f,,8 c, r f,, bes,, r g,, c, r g, c, r
  f,,8 c, r f,, bes,, r g,, c, r g, c, r

  f,,8 c, r f,, bes,, r g,, c, r g, c, aes,
  \mark 41 g,8 c, r f,, bes,, c, g,, r aes, g, c, r
  f,,8 c, r f,, bes,, r g,, c, r g, c, aes,

  g,8 c, r f,, bes,, c, g,, r aes, g, c, r
  f,,8 c, r f,, bes,, r g,, c, r g, c, aes,
  g,8 c, r f,, bes,, c, g,, r aes, g, c, r

  f,,8 c, r f,, bes,, r g,, c, r g, c, aes,
  g,8 c, r f,, bes,, c, g,, r aes, g, c, r
  f,,8 c, r f,, bes,, r g,, c, r g, c, aes,

  \mark 42 g,8 c, r f,, bes,, c, g,, r aes, g, c, aes,
  g,8 c, r f,, bes,, c, g,, r aes, g, c, aes,
  g,8 c, r f,, bes,, c, g,, r aes, g, c, aes,
  g,8 c, r f,, bes,, c, g,, r aes, g, c, aes,
  g,8 c, r f,, bes,, c, g,, r aes, \fadeOut g, c, aes,

  g,8 c, r f,, bes,, c, g,, r aes, g, c, aes, \!
  \mark 43 r2 r2 r2
  r2 r2 r2
  r2 r2 r2
  \bar "||"

  \pageBreak
}

mvtII = \transpose c c'' {
  \key b \major
  \time 3/4
  \transposition bes

  \set Score.rehearsalMarkFormatter = \format-mark-circle-numbers

  \mark 44 R2.*4
  \mark 45 r8 cis'-- \mf (~cis' b16 gis e) r8.
  r4 r4 r4
  r8 cis'-- (~cis' b16 gis e) r8.
  r4 r4 r4

  \mark 46 ais16 (fis cis'8-- ~cis' b16 gis e) r8.
  ais16-- r8. r4 r4
  ais16 (fis cis'8-- ~cis' b16 gis e) r8.
  ais16-- r8. r4 r4
  \mark 47 ais16 (fis cis'8-- ~cis' b16 gis e) r8.
  ais16-- r8. fis16 (cis gis8-- ~gis fis16) r16

  ais16 \fadeOut (fis cis'8-- ~cis' b16 gis e) r8.
  ais16-- r8. fis16 (cis gis8-- ~gis fis16) \! r16
  r4 r4 r4
  r4 r4 r4
  \mark 48 r4 cis'4-- \mf (b16 gis e) r16
  r4 r4 r4
  r4 cis'4-- (b16 gis e) r16
  r4 r4 r4

  \mark 49 r4 cis'4-- (b16 gis e) r16
  r8 ais16-- r16 r8 fis16 (cis) r4
  r4 cis'4-- \mf (b16 gis e) r16
  r8 ais16-- r16 r8 fis16 (cis gis4--

  \mark 50 \beamer b16) r ais (fis cis'4-- b16 gis e) r
  r8 ais16-- r r8 fis16 (cis gis4--
  \mark 51 \beamer b16) \fadeOut r ais (fis cis'4-- b16 gis e) r
  r8 ais16-- r r8 fis16 (cis gis4--
  \beamer b16) r ais (fis cis'4-- b16 gis e) r
  r8 ais16-- r r8 fis16 (cis gis4--) \!

  \mark 52 r4 r4 r4
  r4 r4 r4
  \mark 53 ais16 \fadeIn (fis ais fis \beamer b r b gis b gis ais) r
  \beamer ais16-- r fis (cis fis cis gis8--) r ais16 (fis
  \mark 54 ais16 fis ais fis \beamer b r b gis b gis ais) r

  \beamer ais16-- \f r fis (cis fis cis gis8--) r ais16 (fis
  ais16 fis ais fis \beamer b r b gis b gis ais) r
  \beamer ais16-- r fis (cis fis cis gis8--) r ais16 (fis

  ais16 fis ais fis \beamer b r b gis b gis ais) r
  \beamer ais16-- \fadeOut r fis (cis fis cis gis8--) r ais16 (fis
  \mark 55 ais16 fis ais fis \beamer b r b gis b gis ais) r

  \beamer ais16-- r fis (cis gis cis gis8) \! r4
  ais,16 \fadeIn (fis ais, fis \beamer gis,--) r gis, (e, b,, e, fis,) r
  fis,16-. r8. e,4-- ~e,8 r

  ais,16 \f (fis ais, fis \beamer gis,) r gis, (e, b,, e, fis,) r
  fis,16-. r8. e,4-- ~e,8 r
  \mark 56 ais,16 (fis ais, fis \beamer gis,) r gis, (e, b,, e, fis,) r
  fis,16-. r8. e,4-- ~e,8 r

  ais,16 (fis ais, fis \beamer gis,) r gis, (e, b,, e, fis,) r
  fis,16-. r8. e,4-- ~e,8 r
  ais,16 \fadeOut (fis ais, fis \beamer gis,) r gis, (e, b,, e, fis,) r
  fis,16-. r8. e,4-- \! r

  cis'8-- \fadeIn cis' ~cis' b16 (gis e gis ais) r
  ais16-- r8. r8 gis8-- gis4--
  \mark 57 cis'8-- _\markup { \dynamic "mf" } cis' ~cis' b16 (gis e gis ais) r
  ais16-- r8. r8 gis8-- gis4--

  cis'8-- \f cis'-- ~cis' b16 (gis e gis ais) r
  ais16-- r8. r8 gis8-- gis4--
  cis'8-- cis'-- ~cis' b16 (gis e gis ais) r
  ais16-- \fadeOut r8. r8 gis8-- gis4--

  \mark 58 cis'8-- cis' ~cis' b16 (gis e gis ais) r
  ais16-- r8. r8 gis8-- gis4--
  cis'8-- cis'-- ~cis' b16 (gis e gis ais) r
  ais16-- r8. \! r4 r4

  fis,16 \fadeIn (cis, fis, cis, \beamer gis,-. r b,, e, b,, e, fis,) r
  \beamer fis,16-. r cis, (ais,, cis, ais,, e,8) r fis,16 (cis,
  \mark 59 fis,16 cis, fis, cis, \beamer gis,-. r b,, e, b,, e, fis,) r

  \beamer fis,16-. r cis, (ais,, cis, ais,, e,8) r fis,16 (cis,
  fis,16 \f cis, fis, cis, \beamer gis,-. r b,, e, b,, e, fis,) r
  \beamer fis,16-. r cis, (ais,, cis, ais,, e,8--) r fis,16 (cis,

  fis,16 cis, fis, cis, \beamer gis,-. r b,, e, b,, e, fis,) r
  \beamer fis,16-. r cis, \fadeOut (ais,, cis, ais,, e,8--) r fis,16 (cis,
  fis,16 cis, fis, cis, \beamer gis,-. r b,, e, b,, e, fis,) r

  \beamer fis,16-. r cis, (ais,, cis, ais,, e,8--) \! r4
  \mark 60 R2.*6
  \bar "||"

  \pageBreak
}

motif_A = {
  es'8 r b r des' aes r b r es r aes
  es'4-- ~es'8 r b des' r aes r b es r
}
motif_B = {
  es'8 r b r des' aes des' b r es r aes
  es'4-- ~es'8 r b des' b aes r b es b
}
motif_C = {
  es'8 aes b es' aes b r des' aes es b aes
  es'4-- ~es'8 r b des' r aes des' b es r
}

mvtIII = \transpose c c'' {
  \key aes \major
  \time 3/2
  \transposition bes

  \set Score.rehearsalMarkFormatter = \format-mark-circle-numbers
  \set Timing.beatStructure = 1,1,1

  \mark 61 R1.*4

  \mark 62 r2 r4 f8 \f b, r es r4
  r4 aes-- ~ aes8 r es f r2
  r2 r4 f8 b, r es r4
  r4 aes-- ~ aes8 r es f r2 \break

  \mark 63 r4 aes8 r es r f b, r es r4
  r8 des aes4-- ~aes8 r es f r b, r4

  \mark 64 r4 aes8 r es r f b, r es r4
  r8 des aes4-- ~aes8 r es f r b, r es \break

  \mark 65 g,8 r aes r es r f b, r es r g,
  r8 des aes4-- ~aes8 r es f r b, r es

  g,8 \fadeOut r aes r es r f b, r es r g,
  r8 des aes4-- ~aes8 r es f r b, r es \! \break
  r2 r2 r2
  r2 r2 r2

  \mark 66 es'8 \f r b r des' aes r b r es r aes
  es'4-- ~es'8 r b des' r aes r b es r \break
  \motif_A
  es'8 \> r b r des' aes r b r es r aes
  es'4-- ~es'8 r b des' r aes r b es r \break

  \mark 67 es'8 \mf r b r des' aes r b r es r aes
  es'4-- ~es'8 r b des' r aes r b es r
  \motif_A \break
  \mark 68 \motif_A

  \mark 69 \motif_A \break
  \mark 70 \motif_B
  \motif_B \break \motif_B
  \mark 71 \motif_B \break \motif_B
  \mark 72 \motif_B \break \motif_B
  \mark 73 \motif_C \break \motif_C
  \mark 74 \motif_B \break \motif_B
  \mark 75 \motif_C \break \motif_C
  \mark 76 \motif_B \break \motif_B
  \mark 77 \motif_C \break
  \mark 78 \motif_B
  \mark 79 \motif_B \break
  \mark 80 \motif_C
  \mark 81 \motif_C \break
  \mark 82 \motif_B
  \mark 83 \motif_B \break
  \mark 84 \motif_C
  \mark 85 \motif_C \break
  \mark 86 \motif_B
  \mark 87 \motif_B \break
  \mark 88 \motif_A \motif_A \break \motif_A

  \mark 89 ges'8 \mf r es' r b des' r es' r aes r des'
  ges'8 r es' r b des' r es' r des' aes r \break
  ges'8 r es' r b des' r es' r aes r des'
  ges'8 r es' r b des' r es' r des' aes r
  ges'8 r es' r b des' r es' r aes r des'
  ges'8 r es' r b des' r es' r des' aes r \break

  \mark 90 aes'8 r es' r aes es' r aes' r aes r es'
  aes8 r aes' r aes es' r aes' r aes es' r
  aes'8 r es' r aes es' r aes' r aes r es'
  aes8 r aes' r aes es' r aes' r aes es' r
  aes'8 r es' r aes es' r aes' r aes r es'
  aes8 r aes' r aes es' r aes' r aes es' r
  aes'8 r es' r aes es' r aes' r aes r es'
  aes8 r aes' r aes es' r aes' r aes es' r

  aes'8-^ r r4 r2 r2
  \bar "|."
}

clarinet_Live = #(make-part longName
  #{ \new Staff \with { instrumentName = #shortName } \mvtI #}
  #{ \new Staff \with { instrumentName = #shortName } \mvtII #}
  #{ \new Staff \with { instrumentName = #shortName } \mvtIII #}
)

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
