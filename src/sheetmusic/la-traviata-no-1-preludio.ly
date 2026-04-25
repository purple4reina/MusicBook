\include "common.ly"

\header {
  title      = "La Traviata"
  subtitle   = "No. 1 Preludio"
  composer   = "Giuseppe Verdi"
  instrument = "Clarinet 1 in A"
}

\markup \vspace #1  % extra space after title

\score {
  \layout {
    \context {
      \Staff
      \consists #Measure_counter_engraver
    }
  }
  \transpose a c'' {
    \markBoxNum
    \key e \major
    \time 4/4
    \tempo Adagio

    R1*12
    b,1 \p
    ~b,1
    ~b,8 r r4 r2
    R1*1
    \startMeasureCount
    r8 b, \pp b, r r b, b, r

    \break

    \mark 1
    r8 b, b, r r b, b, r
    r8 b, b, r r b, b, r
    r8 b, b, r r b, b, r
    r8 b, b, r r b, b, r
    \stopMeasureCount

    \break

    r8 b, b, r r gis, gis, r
    r8 gis, gis, r r cis cis r
    r8 b, b, r r b, b, r
    d2 \pp ~d8 r r4
    dis!2 ~dis8 r r4

    \break

    d2 ~d8 r r4
    dis!8 r r4 r2
    \mark 2
    e2 \> (dis4 cis) \!
    b,4. (a,8 fis,4) r
    e2 \> (dis4 cis) \!

    \break

    b,4. (a,8 fis,4) r
    gis2 (\f \> a4. gis8)
    fis8. [(e16) fis8. (e16)] dis8. \pp [(cis16) dis8. (cis16)]
    cis4 (b,8) r gis4. (fis8)
    e8 r r gis-. a-. r r a-.

    \break

    gis8-. r r gis-. a-. r r a-.
    \mark 3
    gis4 \f \> (fis8 e) dis8. \pp [(cis16) dis8. (cis16)]
    b,8. \< (cis16 b,2 cis8 dis
    e8) r \! r gis-. a-. r r a-.

    \break

    gis8-. r r gis-. a-. r r a-.
    gis4 \f \> (fis8 e) dis8. \pp [(cis16) dis8. (cis16)]
    b,8. \< (cis16 b,2 cis8 dis
    e8) r \! e16 [r e] r a8 r cis16 [r dis] r

    \break

    e8 r e16 [r e] r a8 r cis16 [r dis] r
    e8 r r4 e8 r r4
    e8 r \tempo "allarg." c r b, r cis r
    \tempo "morendo" b,8 r r4 b,8 r r4
    b,2 r2 \fermata
    \bar "|."
  }
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
