\header {
  title      = "New York Counterpoint"
  composer   = "Steve Reich"
  arranger   = "Ed. Rey Abolofia"
  instrument = "Live Clarinet in B♭"
  tagline    = #f
}

\layout {
  indent = #0
  ragged-last = ##f
  \compressEmptyMeasures
  \clef treble
  \override MultiMeasureRest.expand-limit = #1
  \numericTimeSignature
}

\paper {
  print-all-headers = ##t
  system-system-spacing.basic-distance = #16
}

fadeIn = _\markup { \italic "fade in" } \<
fadeOut = _\markup { \italic "fade out" } \>
sim = ^\markup { \italic "sim." }

\markup \vspace #1  % extra space after title

clarinetLive = \transpose c c''' {
  \key aes \major
  \time 3/2

  \set Score.rehearsalMarkFormatter = \format-mark-circle-numbers
  \set Timing.beatStructure = 1,1,1

  r1 r4 es8---. \fadeIn es---.
  es8---. es---. es---. es---. es \sim es es es es es es es

  es8 es es es es es es es es es es es
  es8 \mf es es es es es es es es es es es
  es8 \fadeOut es es es es es es es es es es es

  es8 es es es \! r2 r2
  \mark 1 r4 c8---. \fadeIn c---. c---. c---. c \sim c c c c c
  c8 c c c c c c c c c c c
  c8 \mf c c c c c c c c c c c

  c8 \fadeOut c c c c c c c c c c c \!
  \time 2/2 r2 r2
  \time 3/2 \mark 2 r4 bes,8---. \fadeIn bes,---. bes,---. bes,---. bes, \sim bes, bes, bes, bes, bes,

  bes,8 bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes,
  bes,8 \mf bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes,
  bes,8 bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes,
  bes,8 \fadeOut bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes,

  bes,8 bes, bes, bes, \! r2 r2
  \mark 3 r4 c8---. \fadeIn c---. c---. c---. c \sim c c c c c
  c c c c c c c c c \mf c c c

  c c c c c c c c c c c c
  c c c c c c c c c c c c
  c \fadeOut c c c c c c c c c c c \!
  \time 2/2 r2 r2

  \mark 4 \time 3/2 r4 es8---. \fadeIn es---. es---. es---. es \sim es es es es es
  es8 es es es es es es es es \mf es es es
  es8 es es es es es es es es es es es
  es8 es es es es es es es es es es es

  es8 \fadeOut es es es es es es es es es es es
  es es es es \! r2 r2
  \mark 5 r4 c8---. \fadeIn c---. c---. c---. c \sim c c c c c

  c8 c c c c c c c c c c c
  c8 \mf c c c c c c c c c c c
  c8 \fadeOut c c c c c c c c c c c \!
  \time 2/2 r2 r2

  \mark 6 \time 3/2 r4 bes,8---. \fadeIn bes,---. bes,---. bes,---. bes, \sim bes, bes, bes, bes, bes,
  bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes,

  bes, \mf bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes,
  bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes,
  bes, \fadeOut bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes,

  bes, bes, bes, bes, \! r2 r2
  \mark 7 r4 c8---. \fadeIn c---. c---. c---. c \sim c c c c c
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
  \mark 40 g,8 c, r f,, bes,, c, g,, r aes, g, c, r
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

\score {
  \midi { \tempo 4 = 184 }
  \layout {}
  \header {
    title      = "I"
    composer   = #f
    arranger   = #f
    instrument = #f
  }
  \clarinetLive
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
