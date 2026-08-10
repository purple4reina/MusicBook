\include "common.ly"

longName  = "Clarinet 3 in B♭"
shortName = "Cl.3"

boop = { g8 c r f, r bes r es' aes4-- ~aes8 r }
beep = { g8 c r f, r bes r d' aes4-- ~aes8 r }

mvtI = \transpose c c'' {
  \key aes \major
  \time 3/2
  \transposition bes

  \set Score.rehearsalMarkFormatter = \format-mark-circle-numbers
  \set Timing.beatStructure = 1,1,1

  es8---. \fadeIn es---. es---. es---. es \sim es es es es es es es
  es es es es es es es es es es es es
  es \f es es es es es es es es es es es

  es es es es es es es es es es es es
  es es es es es es es es es es es es
  es \fadeOut es es es es es es es es es es es
  \mark 1 es es es es es es es es \! r2

  r2 r4 c8---. \fadeIn c---. c---. c---. c---. c---.
  c \sim c c c c c c \f c c c c c
  c c c c c c c c c c c c
  \time 2/2 c c c \fadeOut c c c c c

  \mark 2 \time 3/2 c c c c c c c c \! r2
  r2 r2 r4 bes,8---. \fadeIn bes,---.
  bes,---. bes,---. bes,---. bes,---. bes, \sim bes, bes, bes, bes, bes, bes, bes,

  bes, \f bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes,
  bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes,
  bes, bes, bes, bes, bes, bes, bes, bes, bes, \fadeOut bes, bes, bes,

  \mark 3 bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, \!
  r2 r2 r4 c8---. \fadeIn c---.
  c---. c---. c---. c---. c \sim c c c c c c c

  c \f c c c c c c c c c c c
  c c c c c c c c c c c c
  \time 2/2 c c c c c \fadeOut c c c

  \mark 4 \time 3/2 c c c c c c c c c c c c \!
  r2 r2 r4 es8---. \fadeIn es---.
  es---. es---. es---. es---. es \sim es es es es es es es

  es \f es es es es es es es es es es es
  es es es es es es es es es es es es
  es \fadeOut es es es es es es es es es es es

  \mark 5 es es es es es es es es \! r2
  r2 r4 c8---. \fadeIn c---. c---. c---. c---. c---.
  c \sim c c c c c c \mf c c c c c
  c c c c c c c c c c c c

  \time 2/2 c \fadeOut c c c c c c c
  \mark 6 \time 3/2 c c c c c c c c \! r2
  r2 r2 r4 bes,8---. \fadeIn bes,---.

  bes,---. bes,---. bes,---. bes,---. bes, \sim bes, bes, bes, bes, bes, bes, bes,
  bes, \f bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes,
  bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes,
  bes, bes, bes, bes, bes, bes, bes, \fadeOut bes, bes, bes, bes, bes,

  \mark 7 bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, bes, \!
  r2 r2 r4 c8---. \fadeIn c---.
  c---. c---. c---. c---. c \sim c c c c c c c

  c \f c c c c c c c c c c c
  c c c c c c c c c c c c
  c \fadeOut c c c c c c c c c c c
  c c c c c c c c c c c c \!

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
  \pageBreak
  \mark 18 g8 \fadeIn c ^\markup { \italic "tenuto sempre" } r f, r bes r es' aes4-- ~aes8 r
  \boop
  \mark 19 g8 \mf c ^\markup { \italic "tenuto sempre" } r f, r bes r es' aes4-- ~aes8 r

  \mark 20 \boop \break \boop \boop
  \mark 21 \boop \boop \break \boop
  \mark 22 \boop \boop

  \mark 23 \boop \break \boop
  \mark 24 \boop
  \mark 25 \boop \boop \break \boop

  \mark 26 \boop \boop
  \mark 27 \boop \break
  \mark 28 \boop \boop

  \mark 29 \boop \boop \break
  \mark 30 \boop
  \mark 31 \boop \boop \boop \break

  \mark 32 \boop \boop
  \mark 33 \boop \boop \break
  \mark 34 \boop \boop

  \mark 35 \boop \boop \break
  \mark 36 \boop \boop
  \mark 37 \boop

  \boop \break \boop \boop \boop \boop \break \boop

  \boop \mark 38 \boop \boop \break

  \boop \boop \boop \boop \break \boop \boop

  \mark 39 \beep \beep \break \beep

  \beep \beep \beep \break

  \mark 40 \boop \boop \boop \boop \break
  \boop \boop \boop \boop \break

  \mark 41 \boop \boop \boop \boop \break
  \boop \boop \boop \boop \break

  \mark 42 \beep \beep \beep
  \beep \beep \beep

  \mark 43 \beep
  g8 \fadeOut c r f, r bes r d' aes4-- ~aes8 r
  \beep \!

  \bar "||"
  \pageBreak
}

poop = {
  \beamer b16) r ais (fis cis'4-- b16 gis e) r
  r8 ais16-- r r8 fis16 (cis gis4--
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

  R2.*4

  \mark 48 R2.*4
  \mark 49 R2.*2

  R2.*2
  \mark 50 R2.*2

  \mark 51 \beamer b16 \fadeIn r ais (fis cis'4-- b16 gis e) r
  r8 ais16-- r r8 fis16 (cis gis4--
  \poop
  \mark 52 \beamer b16) \mf r ais (fis cis'4-- b16 gis e) r
  r8 ais16-- r r8 fis16 (cis gis4--

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
  \mark 52 \beamer b16) \fadeOut r ais (fis cis'4-- b16 gis e) r
  r8 ais16-- r r8 fis16 (cis gis4--

  \beamer b16) r ais (fis cis'4-- b16 gis e) \! r
  r4 r4 r4
  \bar "||"

  \pageBreak
}

#(define lastPrintedKeyAlterations
   (ly:music-property #{ \key aes \major #} 'pitch-alist))
#(define (key-visibility key)
   (let* ((alterations (ly:music-property key 'pitch-alist))
          (visibility (if (equal? lastPrintedKeyAlterations alterations)
                           all-invisible all-visible)))
     (set! lastPrintedKeyAlterations alterations)
     visibility))
#(define (no-dynamic fn)
   (define-music-function () () #{ $fn {} #}))
#(define (key-phrase key musicOne musicTwo)
   (define-music-function (dynamic) (ly:music?) #{
     \once \set Staff.explicitKeySignatureVisibility = #(key-visibility key)
     $key
     $musicOne $dynamic $musicTwo
   #}))

dFlatAesEsGAes = #(
  key-phrase #{ \key aes \major #}
  #{ b8 #}
  #{
    r8 g r aes es r g r des r f
    b4-- ~b8 r g aes r es r g des r
  #}
)
FlatAesEsGAes = #(no-dynamic dFlatAesEsGAes)

dSharpAEGisE = #(
  key-phrase #{ \key e \major #}
  #{ b8 #}
  #{
    r8 gis r a e r gis r cis r e
    b4-- ~b8 r gis a r e r gis cis r
  #}
)
SharpAEGisE = #(no-dynamic dSharpAEGisE)

dFlatEsGGAes = #(
  key-phrase #{ \key aes \major #}
  #{
    b8 r8 g r es g r aes r des r f
    b4-- ~
  #}
  #{ b8 r g aes r es r g des r #}
)
FlatEsGGAes = #(no-dynamic dFlatEsGGAes)

dSharpEGisGisA = #(
  key-phrase #{ \key e \major #}
  #{ b8 #}
  #{
    r8 gis r e gis r a r cis r e
    b4-- ~b8 r gis a r e r gis cis r
  #}
)
SharpEGisGisA = #(no-dynamic dSharpEGisGisA)

dSharpAEGisA = #(
  key-phrase #{ \key e \major #}
  #{ b8 #}
  #{
    r8 gis r a e r gis r cis r e
    b4-- ~b8 r gis a r e r gis cis r
  #}
)
SharpAEGisA = #(no-dynamic dSharpAEGisA)

mvtIII = \transpose c c' {
  \key aes \major
  \time 3/2
  \transposition bes

  \set Score.rehearsalMarkFormatter = \format-mark-circle-numbers
  \set Timing.beatStructure = 1,1,1

  \mark 61 R1.*4
  \mark 62 R1.*4
  \mark 63 R1.*2
  \mark 64 R1.*2
  \mark 65 R1.*2

  \dFlatAesEsGAes \fadeIn \break \dFlatAesEsGAes \mf
  \mark 66 \FlatAesEsGAes \break \FlatAesEsGAes \FlatAesEsGAes \break
  \mark 67 \FlatAesEsGAes \FlatAesEsGAes \break
  \mark 68 \FlatAesEsGAes
  \mark 69 \FlatAesEsGAes \break
  \mark 70 \FlatAesEsGAes \FlatAesEsGAes \break \FlatAesEsGAes
  \mark 71 \SharpAEGisE \break \SharpAEGisE \SharpAEGisE \break
  \mark 72 \SharpAEGisE \SharpAEGisE \break
  \mark 73 \FlatEsGGAes \FlatEsGGAes \pageBreak
  \mark 74 \FlatAesEsGAes \FlatAesEsGAes \break
  \mark 75 \SharpEGisGisA \SharpEGisGisA \break
  \mark 76 \SharpAEGisA \SharpAEGisA \break
  \mark 77 \FlatEsGGAes
  \mark 78 \FlatAesEsGAes \break
  \mark 79 \SharpAEGisA
  \mark 80 \SharpEGisGisA \break
  \mark 81 \FlatEsGGAes
  \mark 82 \FlatAesEsGAes \break
  \mark 83 \SharpAEGisA
  \mark 84 \SharpEGisGisA \break
  \mark 85 \dFlatEsGGAes \fadeOut
  \mark 86 \FlatAesEsGAes \!

  \mark 87 R1.*2
  \mark 88 R1.*6
  \mark 89 R1.*6
  \mark 90 R1.*9
  \bar "|."
  \pageBreak
}

uniqI = { s1 }
uniqII = { s1 }
uniqIII = { s1 }

clarinet_III = #(make-part longName
  #{ \new Staff \with { instrumentName = #shortName } \mvtI #}
  #{ \new Staff \with { instrumentName = #shortName } \mvtII #}
  #{ \new Staff \with { instrumentName = #shortName } \mvtIII #}
  #{ \uniqI #}
  #{ \uniqII #}
  #{ \uniqIII #}
)

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
