\include "common.ly"

longName  = "Clarinet 4 in B♭"
shortName = "Cl.4"

boop = { c'4-- ~c'8 r es aes, r des r g r f }
beep = { bes4-- ~bes8 r es aes, r c r g r f }

mvtI = \transpose c c' {
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

poop = {
  ais4-- gis16 e b,) r r8 fis16-- r
  r8 cis16 (ais, e4-- \beamer gis16) r fis (cis
}

mvtII = \transpose c c' {
  \key b \major
  \time 3/4
  \transposition bes

  \set Score.rehearsalMarkFormatter = \format-mark-circle-numbers

  \mark 44 R2.*4
  \mark 45 R2.*4

  \mark 46 R2.*4
  \mark 47 R2.*2

  ais4-- \fadeIn (gis16 e b,) r r8 fis16-- r
  r8 cis16 (ais, e4-- \beamer gis16) r fis (cis
  ais4-- \mp gis16 e b,) r r8 fis16-- r
  r8 cis16 (ais, e4-- \beamer gis16) r fis (cis

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
  \mark 60 \poop _\markup { \italic "(no fade out)" } \poop

  ais4-- gis16 e b,) r r8 fis16-- r
  r8 cis16 (ais, e4--) r4
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

dFlatDesAesBDes = #(
  key-phrase #{ \key aes \major #}
  #{ es8 #}
  #{
    r8 es' r b r des' aes r b! r es
    r8 aes es'4-- ~es'8 r b des' r aes r b!
  #}
)
FlatDesAesBDes = #(no-dynamic dFlatDesAesBDes)

dSharpCisGisBCis = #(
  key-phrase #{ \key e \major #}
  #{ dis8 #}
  #{
    r8 dis'8 r b r cis' gis r b r dis
    r8 gis dis'4-- ~dis'8 r b cis' r gis r b
  #}
)
SharpCisGisBCis = #(no-dynamic dSharpCisGisBCis)

dFlatEsAesDesAesBDes = #(
  key-phrase #{ \key aes \major #}
  #{ es8 #}
  #{
    aes8 r es' r b r des' aes r b! r
    es8 r aes es'8-- ~es'4 r8 b des' r aes r
  #}
)
FlatEsAesDesAesBDes = #(no-dynamic dFlatEsAesDesAesBDes)

dSharpDisGisCisGisBCis = #(
  key-phrase #{ \key e \major #}
  #{ dis8 #}
  #{
    gis8 r dis' r b r cis' gis r b r
    dis8 r gis dis'8-- ~dis'4 r8 b cis' r gis r
  #}
)
SharpDisGisCisGisBCis = #(no-dynamic dSharpDisGisCisGisBCis)

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

  \mark 66 \dFlatDesAesBDes \f \break \FlatDesAesBDes \dFlatDesAesBDes \fadeOut \break
  \mark 67 \dFlatDesAesBDes \mf \FlatDesAesBDes \break
  \mark 68 \FlatDesAesBDes
  \mark 69 \FlatDesAesBDes \break
  \mark 70 \FlatDesAesBDes \FlatDesAesBDes \break \FlatDesAesBDes
  \mark 71 \SharpCisGisBCis \break \SharpCisGisBCis \SharpCisGisBCis \break
  \mark 72 \SharpCisGisBCis \SharpCisGisBCis \break
  \mark 73 \FlatEsAesDesAesBDes \FlatEsAesDesAesBDes \break
  \mark 74 \FlatDesAesBDes \FlatDesAesBDes \break
  \mark 75 \SharpDisGisCisGisBCis \SharpDisGisCisGisBCis \break
  \mark 76 \SharpCisGisBCis \SharpCisGisBCis \break
  \mark 77 \FlatEsAesDesAesBDes
  \mark 78 \FlatDesAesBDes \break
  \mark 79 \SharpCisGisBCis
  \mark 80 \SharpDisGisCisGisBCis \break
  \mark 81 \FlatEsAesDesAesBDes
  \mark 82 \FlatDesAesBDes \break
  \mark 83 \SharpCisGisBCis
  \mark 84 \SharpDisGisCisGisBCis \break
  \mark 85 \FlatEsAesDesAesBDes
  \mark 86 \FlatDesAesBDes \break
  \mark 87 \SharpCisGisBCis
  \mark 88 \SharpCisGisBCis \break \SharpCisGisBCis \SharpCisGisBCis \break
  \mark 89 \SharpCisGisBCis \SharpCisGisBCis \break \SharpCisGisBCis
  \mark 90 \SharpCisGisBCis \break \SharpCisGisBCis \SharpCisGisBCis \break \SharpCisGisBCis
  dis8-^ r r4 r2 r2
  \bar "|."
  \pageBreak
}

uniqI = { s1 }
uniqII = { s1 }
uniqIII = { s1 }

clarinet_IV = #(make-part longName
  #{ \new Staff \with { instrumentName = #shortName } \mvtI #}
  #{ \new Staff \with { instrumentName = #shortName } \mvtII #}
  #{ \new Staff \with { instrumentName = #shortName } \mvtIII #}
  #{ \uniqI #}
  #{ \uniqII #}
  #{ \uniqIII #}
)

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
