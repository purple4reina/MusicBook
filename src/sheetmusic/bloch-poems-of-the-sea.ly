\header {
  title      = "Poems of the Sea"
  subtitle   = "For Orchestra"
  composer   = "Ernest Bloch"
  instrument = "Clarinet I in Bb"
  tagline    = #(strftime "transcribed by Rey Abolofia, %h %Y" (localtime (current-time)))
}

\layout {
  indent      = #0
  ragged-last = ##f
  \context {
    \Score
    %\override Hairpin.to-barline = ##f
  }
}

\paper {
  print-all-headers = ##t
  system-system-spacing = #'(
    (basic-distance   . 12)
    (minimum-distance .  8)
    (padding          .  4)
    (stretchability   . 60)
  )
}

\include "common.ly"

\markup \vspace #2  % extra space after title
\score {
  \header {
    title      = "I. Waves"
    subtitle   = #f
    composer   = #f
    instrument = #f
  }
  \transpose c c' {
    \compressEmptyMeasures
    \clef treble
    \key es \major
    \time 3/4
    \tempo "Poco Agitato"
    \markBoxNum

    \t{ g8 \pp (des c } \t{ g8 des c } \t{ g8 des c }
    \t{ g8) r r } r4 r
    \t{ g8 \txtDown "poco cresc" (des c } \t{ g8 des c } \t{ g8 des c }
    \t{ g8) r r } r4 r

    \break

    \t{ g8 (des c } \t{ g8 \> des c } \t{ g8 des c \! }
    \t{ bes8) r r } r4 r
    \t{ aes8-- \< (des c \! } \t{ aes8 des c } \t{ g8-- \> des c }
    \t{ ges8) \! r r } r4 r \txtUp "(poco rit"

    \break

    \t{ e8 \< (des c) \! } \t{ ges8-- (des c \> } \t{ ges8 des c) \! }
    \t{ e8 \> \txtUp "a tempo)" (des c } \t{ e8 des c \! } \t{ e) r r }
    \mark \default  % 1
    R2.*5

    \break  % page 3

    g8 \p \txtUp "solo" \< ([c'--] ~c' [bes--] \! ~bes \> g-- es8) \! r r4 r
    d'4 \mf \txtUp "solo" \< f'4..-- (g'16) \!
    d'2.-- \>
    \mark \default  % 2
    \t{ c'8 \p (d' c' } \t{ d' c' d' } \t{ c' d' c') }

    \break

    \t{ d'8 (c' d' } \t{ c' d' c' } \t{ d' c' d') }
    \t{ c'8 (d' c' } \t{ d' c' d') } \t{ c' (des' c' }
    \t{ des'8 c' des') } \t{ ces'8 \> (des' ces' } \t{ des'8 ces' des') \! }
    \t{ ces'8 (des' ces' } \t{ des' ces' des' } \t{ ces' des' ces') }

    \break

    \t{ des'8 (ces' des' } \t{ ces' des' ces') } \t{ aes8 (b aes }
    \t{ b8 aes b \< } \t { aes b aes } \t{ b aes b) \! }
    \t{ ges8 (bes! \> ges } \t{ a-- ges a } \t{ f-- \! aes f) }
    \t{ r8 e \< (g! } \t{ es g es \! } \t{ fis \> d fis) \! }

    \break

    \t{ des8 (f des \> } \t{ f des f } \t{ des f des) \! }
    \mark \default  % 3
    \t{ e \txtDown "dim" (des c \> } \t{ e des c } \t{ e \pp des c) \! }
    R2.*6
    \tremolo 6 { bes,16 \p \txtUp "Poco piu agitato" (g,) \txtDown "dim" }
    \tremolo 6 { bes,16 (g,) }
    \tremolo 6 { bes,16 \> (g,) \! }

    \break
    \bar "||"
    \key d \major
    \mark \default  % 4

    \tremolo 6 { bes,16 \pp (g,) }
    \tremolo 4 { bes,16 (g,) } \tremolo 2 { des16 (bes,) }
    \tremolo 2 { des16 (bes,) } \tremolo 2 { bes, \< (g,) } \tremolo 2 { des (bes,) \! }
    \tremolo 6 { e16 \txtDown "cresc poco a poco" (cis) }
    \tremolo 6 { e16 (cis) }
    \tremolo 2 { e16 (cis) \< } \tremolo 2 { g16 (e) } \tremolo 2 { bes16 (g) \! }

    \break

    r4 \txtUp "Piu mosso" \mf \t{ cis''8 \< (fis' cis'') \! } \t{ cis''8-> \> (g' cis'') \! }
    r4 \t{ cis''8 \< (fis' cis'') \! } \t{ cis''8-> \> (g' cis'') \! }
    r4 \t{ cis''8-> \txtDown "cresc" (g' cis'') } \t{ cis'' (e' cis'') }
    \t{ cis''8-> (g' cis'') \> } \t{ cis'' (e' cis'') } \t{ cis''-> (g' cis'') \! }
    \mark \default  % 5
    g''2-> \f \< e''8.-> \! r16
    g''2-> \f \< e''8.-> \! r16

    \break
    \bar "||"
    \time 4/4

    e''4-> \f \< e''8.-> r16 e''4-> e''8.-> \! r16
    \bar "||"
    \time 3/4
    cis''2-^ \ff \startTrillSpan \txtUp "allargando molto" \grace { bis'32 \stopTrillSpan (cis'') } d''8-^-. r
    \bar "||"
    \time 4/4
    cis''2-^ \startTrillSpan \< \grace { bis'32 \stopTrillSpan (cis'') } \t{ d''8-^ d'' d'' } \t{ es''8-^ es'' es'' }

    \break
    \bar "||"
    \time 3/4

    \t{ e!8-^ \fff \txtUp "Meno mosso" (bes, a,) } \t{ e-^ \txtDown "dim" (bes, a,) } \t{ e-^ (bes, a,) \! }
    \t{ e8-^ \> (bes, a,) } \t{ e-^ (bes, a,) } \t{ e-^ (bes, a,) \! }
    \t{ e \mf (bes, a, } \t{ e bes, a, } \t{ e bes, a,) }
    R2.*12

    \fermataBar
    \break  % page 4
    \time 6/4
    \key es \major

    \partial 2. { g2. \p \txtUp "Listesso tempo" \txtDown "espr" }
    a2. \< es \>
    a2. \< c'
    ~c'2 \> r4 \! es'2.-- \>
    ~es'2. \fermata <>\! r4 c' \txtUp "Solo" \p \< (d') \!

    \break
    \bar "||"
    \time 9/4
    \mark \default  % 6

    es'4.-- \txtUp "Semplice" (d'8 c'4) bes2. \< (~bes4. c') \! \txtDown "poco"
    es'4-- \> (d' c' ~c'2. ~c'4) \! r r
    a2.-- \mp \< aes-- a4-- \> (g2--) \!

    \bar "||"
    \key c \major

    f1. \> ~f4 \! r r
    R2.*3
    \bar "||"
    \time 6/4
    R1.
    e'2.-- \mf \< fis'-- \!
    \bar "||"
    \time 9/4
    e'1.-- \> ~e'2. \!

    \break
    \bar "||"
    \time 3/4
    \key f \major

    R2. ^\markup { "Tempo Iº" \italic "  (poco agitato)" }
    \bar "||"
    \time 2/4
    \t{ g8-> \pp \< (des c \! } \t{ g-> \> des c) \! }
    \time 3/4
    R2.*4
    \mark \default  % 7
    a'4 \mp e'4. \txtUp "espr" \< (f'8 \!
    g'4) d'8 (e') e'4

    \break

    a'8 \> (g' e'2 \!
    ~e'2.) \> <>\!
    R2.
    \tuplet 5/4 {
        g,16 \p \< (fis, g, a, ais,
      }
      \tuplet 5/4 {
        bes,16) r r r r \!
      }
      des32 \< (c des d es e f fis \!
    g32) r32 r16 r8 r4 r4

    \break

    R2.*2
    \bar "||"
    \mark \default  % 8
    des'2. \f
    ~des'
    ~des'8 r r4 r4
    r16 \mp bes, (des bes, des bes, \< des bes, des bes, des bes,) \!

    \break

    r4 \< <>\! \tuplet 6/4 {
        a'16 \> (gis' g' f' des' bes) \!
      } f'16 r r8
    \tuplet 6/4 {
        f'16 \< (des' bes f' g' gis' \!
      } a'16) r r8
      \tuplet 6/4 {
        f'16 \< (g' gis' \! a'-> \> gis' g' \!
      }
    f'16) r r8 r4 r4

    \break

    r4 bes,2-> \> <>\!
    \mark \default  % 9
    \tremolo 12 { cis32 (e) \txtDown "dim molto" }
    \tremolo 12 { cis32 (e) }
    \bar "||"
    \key es \major
    R2.*7

    \break  % page 5
    \mark \default  % 10

    g,4 \p \< bes,4.-- \! (c8) \>
    g,2 \! r4
    R2. ^\markup { \italic "rall" }
    \t{ r8 \mp \txtUp "a tempo" des \txtDown "Solo" (c } \t{ e des c } \t{ e des c) }
    \t{ e8 (des c } \t{ e des c } \t{ e \txtDown "rit" des c) }

    %\break

    r4 e'2 \pp
    ~e'4 \fermata r r
    \bar "|."
  }
}

\markup \vspace #2  % extra space after title
\score {
  \header {
    title      = "II. Chanty"
    subtitle   = #f
    composer   = #f
    instrument = #f
  }
  \transpose c c' {
    \compressEmptyMeasures
    \clef treble
    \key a \major
    \time 3/4
    \tempo "Andante misterioso"
    \markBoxNum

    R2.*2
    r4 fis2 \p
    ~fis2 ~fis8 r
    fis2 \< ~fis8 \! \txtDown "poco" r
    fis2 \> r4 \!
    a2. \mp \> <>\!

    \break

    b2 \txtDown "dim" ~b8 r
    fis2. ~ \txtDown "rit"
    \mark \default  % 1
    fis2 \> \fermata r4 \txtUp "a tempo" \!
    R2.*9

    \break
    \bar "||"
    \time 4/4

    r2 \fermata r4
    \mark \default  % 2
    \bar "||"
    \key b \major
    r4 \txtUp "(in the character of a folk song)"
    \bar "||"
    \time 3/4
    R2.*6
    \bar "||"
    \time 4/4
    r2 r4
    \mark \default  % 3
    \bar "||"
    \key e \major
    r4

    \break
    \time 3/4

    R2.
    r4 \mf a4-- \< (b--
    ~b4 \txtUp "poco rit" \> gis8) \! r r4
    R2. ^\markup { \italic "                a tempo" }
    r4 r fis'8 \< (gis'
    a'2.) \f \> <>\!

    \break
    \bar "||"
    \time 4/4

    R1*2
    \mark \default  % 4
    \bar "||"
    \key a \major
    \time 3/4
    fis,2. \mp
    fis,2 \> <>\! \fermata r4 \fermata
    R2.*3

    \break

    R2. _\markup { \italic "poco rit" }
    \mark \default  % 5
    r4 \txtUp "a tempo" fis2 \p
    ~fis2 ~fis8 r \txtUp "poco rit"
    fis2 \< ~fis8 \txtDown "poco" \! r
    fis2 \> r4 \! \txtUp "a tempo"
    a2. \mp

    \break

    b2 \txtDown "dim" ~b8 r
    fis2.
    ~fis2 \> \fermata r4 \! \fermata
    \bar "|."
    \stopStaff s_\markup { \italic "V.S." }
  }
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
