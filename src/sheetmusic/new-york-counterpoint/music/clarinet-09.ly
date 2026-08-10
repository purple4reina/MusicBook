\include "common.ly"

longName  = "Bass Clarinet 9 in B♭"
shortName = "Bass Cl.9"

mvtI = \transpose c c' {
  \key aes \major
  \time 3/2
  \transposition bes,

  \set Score.rehearsalMarkFormatter = \format-mark-circle-numbers
  \set Timing.beatStructure = 1,1,1

  r2 ^\markup { \bold "Bass Clarinet" } r2 r2
  r2 r2 r4 f8-. \fadeIn f-.
  f-. f-. f-. f-. f \sim f f f f f f f

  f \f f f f f f f f f f f f
  f f f f f f f f f \fadeOut f f f
  f f f f f f f f \! r2
  \mark 1 r2 r2 r4 aes8-. \fadeIn aes-.

  aes-. aes-. aes-. aes-. aes \sim aes aes aes aes aes aes aes
  aes \f aes aes aes aes aes aes aes aes aes aes aes
  aes aes aes aes aes \fadeOut aes aes aes aes aes aes aes
  \time 2/2 aes aes aes aes \! r2

  \mark 2 \time 3/2 r2 r2 r2
  r4 c'8 \fadeIn c' c' c' c' c' c' c' c' c'
  c' \f c' c' c' c' c' c' c' c' c' c' c'

  c' c' c' c' c' c' c' c' c' c' c' c'
  c' c' c' c' c' \fadeOut c' c' c' c' c' c' c'
  c' c' c' c' c' c' c' c' \! r2

  \mark 3 r2 r2 r4 aes8 \fadeIn aes
  aes aes aes aes aes aes aes aes aes aes aes aes
  aes \f aes aes aes aes aes aes aes aes aes aes aes

  aes aes aes aes aes aes aes aes aes aes aes aes
  aes \fadeOut aes aes aes aes aes aes aes aes aes aes aes
  \time 2/2 aes aes aes aes \! r2

  \mark 4 \time 3/2 r2 r2 r4 f8 \fadeIn f
  f f f f f f f f f f f f
  f \f f f f f f f f f f f f

  f f f f f f f f f f f f
  f f f f f f f f f \fadeOut f f f
  f f f f f f f f \! r2

  \mark 5 r2 r2 r4 aes8 \fadeIn aes
  aes aes aes aes aes aes aes aes aes aes aes aes
  aes \f aes aes aes aes aes aes aes aes aes aes aes
  aes aes aes aes aes aes aes \fadeOut  aes aes aes aes aes

  \time 2/2 aes aes aes aes \! r2
  \mark 6 \time 3/2 r2 r2 r2
  r4 c'8 \fadeIn c' c' c' c' c' c' c' c' c'

  c' \f c' c' c' c' c' c' c' c' c' c' c'
  c' c' c' c' c' c' c' c' c' c' c' c'
  c' c' c' c' c' c' c' \fadeOut c' c' c' c' c'
  c' c' c' c' c' c' c' c' \! r2

  \mark 7 r2 r2 r4 aes8 \fadeIn aes
  aes aes aes aes aes aes aes aes aes aes aes aes
  aes \f aes aes aes aes aes aes aes aes aes aes aes

  aes aes aes aes aes aes aes aes aes aes aes aes
  aes \fadeOut aes aes aes aes aes aes aes aes aes aes aes
  aes aes aes aes aes aes aes aes aes aes aes aes \!
  r2 r2 r2

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
  \pageBreak
  \mark 37 r2 r2 r2

  r4 des'8 \fadeIn des' des' des' des' des' des' des' des' des'
  des' des' des' des' des' des' des' des' des' des' des' des'
  des' des' des' des' des' des' des' des' des' des' des' des'
  des' \f des' des' des' des' des' des' des' des' des' des' des'
  des' des' des' des' des' des' des' des' des' des' des' des'
  des' \fadeOut des' des' des' des' des' des' des' des' des' des' des'

  des' des' des' des' des' des' des' des' des' des' des' des' \!
  \mark 38 r2 r2 r2
  r4 f'8 \fadeIn f' f' f' f' f' f' f' f' f'

  f' f' f' f' f' f' f' f' f' f' f' f'
  f' f' f' f' f' f' f' f' f' f' f' f'
  f' \f f' f' f' f' f' f' f' f' f' f' f'
  f' f' f' f' f' f' f' f' f' f' f' f'
  f' \fadeOut f' f' f' f' f' f' f' f' f' f' f'
  f' f' f' f' f' f' f' f' f' f' f' f' \!

  \mark 39 r2 r2 r2
  r4 aes'8 \fadeIn aes' aes' aes' aes' aes' aes' aes' aes' aes'
  aes' aes' aes' aes' aes' aes' aes' aes' aes' \f aes' aes' aes'

  aes' aes' aes' aes' aes' aes' aes' aes' aes' aes' aes' aes'
  aes' aes' aes' aes' aes' aes' aes' aes' aes' \fadeOut aes' aes' aes'
  aes' aes' aes' aes' aes' aes' aes' aes' aes' aes' aes' aes' \!

  \mark 40 r2 r2 r2
  r4 des'8 \fadeIn des' des' des' des' des' des' des' des' des'
  des' des' des' des' des' des' des' des' des' des' des' des'
  des' \f des' des' des' des' des' des' des' des' des' des' des'

  des' des' des' des' des' des' des' des' des' des' des' des'
  des' des' des' des' des' des' des' des' des' des' des' des'
  des' \fadeOut des' des' des' des' des' des' des' des' des' des' des'
  des' des' des' des' des' des' des' des' des' des' des' des' \!

  \mark 41 r2 r2 r2
  r4 f'8 \fadeIn f' f' f' f' f' f' f' f' f'
  f' f' f' f' f' f' f' f' f' f' f' f'
  f' \f f' f' f' f' f' f' f' f' f' f' f'

  f' f' f' f' f' f' f' f' f' f' f' f'
  f' f' f' f' f' f' f' f' f' f' f' f'
  f' \fadeOut f' f' f' f' f' f' f' f' f' f' f'
  f' f' f' f' f' f' f' f' f' f' f' f' \!

  \mark 42 r2 r2 r2
  r4 aes'8 \fadeIn aes' aes' aes' aes' aes' aes' aes' aes' aes'
  aes' aes' aes' aes' aes' aes' aes' aes' aes' \f aes' aes' aes'

  aes' aes' aes' aes' aes' aes' aes' aes' aes' aes' aes' aes'
  aes' aes' aes' aes' aes' aes' aes' aes' aes' \fadeOut aes' aes' aes'
  aes' aes' aes' aes' aes' aes' aes' aes' aes' aes' aes' aes' \!

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
  \mark 45 R2.*4
  \mark 46 R2.*4
  \mark 47 R2.*6
  \mark 48 R2.*4
  \mark 49 R2.*4
  \mark 50 R2.*2
  \mark 51 R2.*4
  \mark 52 R2.*2
  \mark 53 R2.*2

  \mark 54 r4 r4 r8 dis16 \fadeIn dis
  dis dis dis dis dis dis dis dis dis dis dis dis

  dis dis dis dis dis dis dis dis dis dis dis dis
  dis \f dis dis dis dis dis dis dis dis dis dis dis
  dis dis dis dis dis dis dis \fadeOut dis dis dis dis dis
  dis dis dis dis \! r4 r4

  \mark 55 r4 r4 r8 gis16 \fadeIn gis
  gis gis gis gis gis gis gis gis gis gis gis gis
  gis \f gis gis gis gis gis gis gis gis gis gis gis
  gis gis gis gis gis gis gis gis gis gis gis gis

  gis \fadeOut gis gis gis gis gis gis gis gis gis gis gis
  gis gis gis gis \! r4 r4
  \mark 56 r4 r4 r8 ais16 \fadeIn ais
  ais ais ais ais ais ais ais ais ais ais ais ais

  ais ais ais ais ais ais ais ais ais ais ais ais
  ais \f ais ais ais ais ais ais ais ais ais ais ais
  ais ais ais ais ais ais ais ais ais ais ais ais
  ais ais ais ais ais \fadeOut ais ais ais ais ais ais ais

  ais ais ais ais ais ais ais ais ais ais ais ais \!
  r4 r4 r4
  \mark 57 r4 r4 r8 dis16 \fadeIn dis
  dis dis dis dis dis dis dis dis dis dis dis dis

  dis dis dis dis dis dis dis dis dis dis dis dis
  dis \f dis dis dis dis dis dis dis dis dis dis dis
  dis dis dis dis dis \fadeOut dis dis dis dis dis dis dis
  dis dis dis dis \! r4 r4

  \mark 58 r4 r4 gis16 \fadeIn gis gis gis
  gis gis gis gis gis gis gis gis gis gis gis gis
  gis \f gis gis gis gis gis gis gis gis gis gis gis
  gis gis gis gis gis gis gis gis gis gis gis gis

  gis \fadeOut gis gis gis gis gis gis gis gis gis gis gis
  gis gis gis gis \! r4 r4
  \mark 59 r4 r4 r8 ais16 \fadeIn ais
  ais ais ais ais ais ais ais ais ais ais ais ais

  ais ais ais ais ais ais ais ais ais ais ais ais
  ais \f ais ais ais ais ais ais ais ais ais ais ais
  ais ais ais ais ais ais ais ais ais ais ais ais
  ais \fadeOut ais ais ais ais ais ais ais ais ais ais ais

  ais ais ais ais ais ais ais ais \! r4
  r4 r4 r4
  \mark 60 R2.*6
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

#(define (time-signature-fraction time)
   (cons (ly:music-property time 'numerator)
         (ly:music-property time 'denominator)))
#(define lastPrintedTimeSignature
   (time-signature-fraction #{ \time 3/2 #}))
#(define (time-visibility time)
   (let* ((fraction (time-signature-fraction time))
          (visibility (if (equal? lastPrintedTimeSignature fraction)
                           all-invisible all-visible)))
     (set! lastPrintedTimeSignature fraction)
     visibility))

#(define (key-time-phrase key time musicOne musicTwo)
   (define-music-function (dynamic) (ly:music?) #{
     \once \set Staff.explicitKeySignatureVisibility = #(key-visibility key)
     \once \override Staff.TimeSignature.break-visibility = #(time-visibility time)
     $key
     $time
     $musicOne $dynamic $musicTwo
   #}))

dFlatEsEsAA = #(
  key-time-phrase #{ \key aes \major #} #{ \time 3/2 #}
  #{ es8 #}
  #{
    r8 es' r es es' r4 a8 r r a'
    es'8 r es'' r a a' r4 a8 r r a'
  #}
)
FlatEsEsAA = #(no-dynamic dFlatEsEsAA)

dFlatEsEsAABeamer = #(
  key-time-phrase #{ \key aes \major #} #{ \time 12/8 #}
  #{ es8 #}
  #{
    r8 r es' r r \tplBeamer es es' r a r a'
    es'8 r r a' r r \tplBeamer a a' r a r a'
  #}
)
FlatEsEsAABeamer = #(no-dynamic dFlatEsEsAABeamer)

dFlatAAA = #(
  key-time-phrase #{ \key aes \major #} #{ \time 3/2 #}
  #{ es'8 #}
  #{
    r8 es r r es' es r a' r a a'
    r4 es'8 r r a' a r a' r a a'
  #}
)
FlatAAAA = #(no-dynamic dFlatAAA)

dSharpFisFisAA = #(
  key-time-phrase #{ \key e \major #} #{ \time 3/2 #}
  #{ fis8 #}
  #{
    r8 fis' r fis fis' r4 cis'8 r r cis''
    fis'8 r fis'' r a a' r4 a8 r r a'
  #}
)
SharpFisFisAA = #(no-dynamic dSharpFisFisAA)

dSharpCisCisAA = #(
  key-time-phrase #{ \key e \major #} #{ \time 3/2 #}
  #{ fis'8 #}
  #{
    r8 fis r r fis' fis r cis'' r cis' cis''
    r4 fis'8 r r a' a r a' r a a'
  #}
)
SharpCisCisAA = #(no-dynamic dSharpCisCisAA)

dSharpCisCisAABeamer = #(
  key-time-phrase #{ \key e \major #} #{ \time 12/8 #}
  #{ fis8 #}
  #{
    r8 r fis' r r \tplBeamer cis' cis'' r cis' r cis''
    fis'8 r r fis'' r r \tplBeamer a a' r a r a'
  #}
)
SharpCisCisAABeamer = #(no-dynamic dSharpCisCisAABeamer)

mvtIII = \transpose c c {
  \key aes \major
  \time 3/2
  \transposition bes,

  \set Score.rehearsalMarkFormatter = \format-mark-circle-numbers
  \set Timing.beatStructure = 1,1,1

  \mark 61 R1.*4
  \mark 62 R1.*4
  \mark 63 R1.*2
  \mark 64 R1.*2
  \mark 65 R1.*6
  \mark 66 R1.*6

  \mark 67 r2 es8 \f es' r4 a8 r r a'
  es'8 r es'' r r2 r2
  r2 es8 es' r4 a8 r r a'
  es'8 r es'' r r2 r2 \break
  \mark 68 r4 es'8 r es es' r4 a8 r r a'
  es'8 r es'' r r2 r2
  \mark 69 r4 es'8 r es es' r4 a8 r r a'
  es'8 r es'' r a a' r4 a8 r r a' \break

  \mark 70 \FlatEsEsAA \FlatEsEsAA \break \dFlatEsEsAA \>
  \mark 71 \dSharpFisFisAA \mf \break \SharpFisFisAA \SharpFisFisAA \break
  \mark 72 \SharpCisCisAA \SharpCisCisAA \break
  \mark 73 \FlatEsEsAABeamer \FlatEsEsAABeamer \break
  \mark 74 \FlatAAAA \FlatAAAA \break
  \mark 75 \SharpCisCisAABeamer \SharpCisCisAABeamer \break
  \mark 76 \SharpFisFisAA \SharpFisFisAA \break
  \mark 77 \FlatEsEsAABeamer \noBreak
  \mark 78 \FlatAAAA \break
  \mark 79 \SharpCisCisAA
  \mark 80 \SharpCisCisAABeamer \break

  \once \set Staff.explicitKeySignatureVisibility = #(key-visibility #{ \key aes \major #})
  \key aes \major
  \mark 81 es8 r r es' r r \tplBeamer es es' r a r a'
  es'8 \fadeOut r r a' r r a a' r a r a' \noBreak

  \mark 82 \FlatAAAA \break
  \mark 83 \SharpCisCisAA
  \mark 84 fis8 r r fis' r r cis' cis'' r cis' r cis''
  fis' r r fis'' r r a a' r a r r \! \break

  \mark 85 R1.*2
  \mark 86 R1.*2
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

clarinet_IX = #(make-part longName
  #{ \new Staff \with { instrumentName = #shortName } \mvtI #}
  #{ \new Staff \with { instrumentName = #shortName } \mvtII #}
  #{ \new Staff \with { instrumentName = #shortName } \mvtIII #}
  #{ \uniqI #}
  #{ \uniqII #}
  #{ \uniqIII #}
)

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
