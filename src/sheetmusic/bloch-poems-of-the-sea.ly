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
    (padding          .  3.5)
    (stretchability   . 60)
  )
}

\include "common.ly"

\markup \vspace #1  % extra space after title
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

    %\break

    \t{ g8 (des c } \t{ g8 \> des c } \t{ g8 des c \! }
    \t{ bes8) r r } r4 r
    \t{ aes8-- \< (des c \! } \t{ aes8 des c } \t{ g8-- \> des c }
    \t{ ges8) \! r r } r4 r \txtUp "(poco rit"

    %\break

    \t{ e8 \< (des c) \! } \t{ ges8-- (des c \> } \t{ ges8 des c) \! }
    \t{ e8 \> \txtUp "a tempo)" (des c } \t{ e8 des c \! } \t{ e) r r }
    \mark \default  % 1
    R2.*5

    %\break  % page 3

    g8 \p \txtUp "solo" \< ([c'--] ~c' [bes--] \! ~bes \> g-- es8) \! r r4 r
    d'4 \mf \txtUp "solo" \< f'4..-- (g'16) \!
    d'2.-- \>
    \mark \default  % 2
    \t{ c'8 \p (d' c' } \t{ d' c' d' } \t{ c' d' c') }

    %\break

    \t{ d'8 (c' d' } \t{ c' d' c' } \t{ d' c' d') }
    \t{ c'8 (d' c' } \t{ d' c' d') } \t{ c' (des' c' }
    \t{ des'8 c' des') } \t{ ces'8 \> (des' ces' } \t{ des'8 ces' des') \! }
    \t{ ces'8 (des' ces' } \t{ des' ces' des' } \t{ ces' des' ces') }

    %\break

    \t{ des'8 (ces' des' } \t{ ces' des' ces') } \t{ aes8 (b aes }
    \t{ b8 aes b \< } \t { aes b aes } \t{ b aes b) \! }
    \t{ ges8 (bes! \> ges } \t{ a-- ges a } \t{ f-- \! aes f) }
    \t{ r8 e \< (g! } \t{ es g es \! } \t{ fis \> d fis) \! }

    %\break

    \t{ des8 (f des \> } \t{ f des f } \t{ des f des) \! }
    \mark \default  % 3
    \t{ e \txtDown "dim" (des c \> } \t{ e des c } \t{ e \pp des c) \! }
    R2.*6
    \tremolo 6 { bes,16 \p \txtUp "Poco piu agitato" (g,) \txtDown "dim" }
    \tremolo 6 { bes,16 (g,) }
    \tremolo 6 { bes,16 \> (g,) \! }

    %\break

    \bar "||"
    \key d \major
    \mark \default  % 4
    \tremolo 6 { bes,16 \pp (g,) }
    \tremolo 4 { bes,16 (g,) } \tremolo 2 { des16 (bes,) }
    \tremolo 2 { des16 (bes,) } \tremolo 2 { bes, \< (g,) } \tremolo 2 { des (bes,) \! }
    \tremolo 6 { e16 \txtDown "cresc poco a poco" (cis) }
    \tremolo 6 { e16 (cis) }
    \tremolo 2 { e16 (cis) \< } \tremolo 2 { g16 (e) } \tremolo 2 { bes16 (g) \! }

    %\break

    r4 \txtUp "Piu mosso" \mf \t{ cis''8 \< (fis' cis'') \! } \t{ cis''8-> \> (g' cis'') \! }
    r4 \t{ cis''8 \< (fis' cis'') \! } \t{ cis''8-> \> (g' cis'') \! }
    r4 \t{ cis''8-> \txtDown "cresc" (g' cis'') } \t{ cis'' (e' cis'') }
    \t{ cis''8-> (g' cis'') \> } \t{ cis'' (e' cis'') } \t{ cis''-> (g' cis'') \! }
    \mark \default  % 5
    g''2-> \f \< e''8.-> \! r16
    g''2-> \f \< e''8.-> \! r16

    %\break

    \bar "||"
    \time 4/4
    e''4-> \f \< e''8.-> r16 e''4-> e''8.-> \! r16
    \bar "||"
    \time 3/4
    cis''2-^ \ff \startTrillSpan \txtUp "allargando molto" \grace { bis'32 \stopTrillSpan (cis'') } d''8-^-. r
    \bar "||"
    \time 4/4
    cis''2-^ \startTrillSpan \< \grace { bis'32 \stopTrillSpan (cis'') } \t{ d''8-^ d'' d'' } \t{ es''8-^ es'' es'' }

    %\break

    \bar "||"
    \time 3/4
    \t{ e!8-^ \fff \txtUp "Meno mosso" (bes, a,) } \t{ e-^ \txtDown "dim" (bes, a,) } \t{ e-^ (bes, a,) \! }
    \t{ e8-^ \> (bes, a,) } \t{ e-^ (bes, a,) } \t{ e-^ (bes, a,) \! }
    \t{ e \mf (bes, a, } \t{ e bes, a, } \t{ e bes, a,) }
    R2.*12
    \fermataBar

    %\break  % page 4

    \time 6/4
    \key es \major
    \partial 2. { g2. \p \txtUp "Listesso tempo" \txtDown "espr" }
    a2. \< es \>
    a2. \< c'
    ~c'2 \> r4 \! es'2.-- \>
    ~es'2. \fermata <>\! r4 c' \txtUp "Solo" \p \< (d') \!

    %\break

    \bar "||"
    \time 9/4
    \mark \default  % 6
    es'4.-- \txtUp "Semplice" (d'8 c'4) bes2. \< (~bes4. c') \! \txtDown "poco"
    es'4-- \> (d' c' ~c'2. ~c'4) \! r r
    a2.-- \mp \< aes-- a4-- \> (g2--) \!

    %\break

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

    %\break

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

    %\break

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

    %\break

    R2.*2
    \bar "||"
    \mark \default  % 8
    des'2. \f
    ~des'
    ~des'8 r r4 r4
    r16 \mp bes, (des bes, des bes, \< des bes, des bes, des bes,) \!

    %\break

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

    %\break

    r4 bes,2-> \> <>\!
    \mark \default  % 9
    \tremolo 12 { cis32 (e) \txtDown "dim molto" }
    \tremolo 12 { cis32 (e) }
    \bar "||"
    \key es \major
    R2.*7

    %\break  % page 5

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

    %\break

    b2 \txtDown "dim" ~b8 r
    fis2. ~ \txtDown "rit"
    \mark \default  % 1
    fis2 \> \fermata r4 \txtUp "a tempo" \!
    R2.*9

    %\break

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

    %\break

    \time 3/4
    R2.
    r4 \mf a4-- \< (b--
    ~b4 \txtUp "poco rit" \> gis8) \! r r4
    R2. ^\markup { \italic "                a tempo" }
    r4 r fis'8 \< (gis'
    a'2.) \f \> <>\!

    %\break

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

    %\break

    R2. _\markup { \italic "poco rit" }
    \mark \default  % 5
    r4 \txtUp "a tempo" fis2 \p
    ~fis2 ~fis8 r \txtUp "poco rit"
    fis2 \< ~fis8 \txtDown "poco" \! r
    fis2 \> r4 \! \txtUp "a tempo"
    a2. \mp

    %\break

    b2 \txtDown "dim" ~b8 r
    fis2.
    ~fis2 \> \fermata r4 \! \fermata
    \bar "|."
    \stopStaff s_\markup { \italic "V.S." }
  }
}

\markup \vspace #2  % extra space after title
\score {  % page 6
  \header {
    title      = "III. At Sea"
    subtitle   = #f
    composer   = #f
    instrument = #f
  }
  \transpose c c' {
    \compressEmptyMeasures
    \clef treble
    \key a \major
    \time 6/8
    \tempo "Allegro Vivo"
    \markBoxNum

    \partial 4. { fis'8 \f (b') \txtDown "molto ritmico" b'-. }
    b'4-> (cis''8) b'4-> (fis'8)
    b'4-> (e'8) b'4-> (cis''8)
    b'4-> fis'8-. gis'8 (fis' e')
    fis'8 (b fis') gis' (fis' e')
    fis'8-> (b fis') e' (d' cis')

    %\break

    b8 (fis b) cis' (e cis')
    b8 (fis b) e' (d' cis')
    b8 (a gis) fis (d e)
    fis (b, fis) e (d e)
    fis8 r r r4.
    \mark \default  % 1
    b4.-- \mf (cis'--

    %\break

    b4.-- a--)
    b4.-- \< (e'-- \!
    b4.-- \> fis'--) \!
    b'8 \p (a' \txtDown "cresc poco a poco" gis' fis' e' d')
    cis'8 (b) b e' (b) b
    fis'8 (b) b e' (b) b
    fis'8 (b) b gis' (b) b

    %\break

    fis'-> (b) b e'-> (b) b
    fis'-> (b) b gis'-> (b) b
    a'-> (b) b ais'-> (b) b
    b'-> (b) b cis''-> (b') \< b'
    d''8-> (b') b' e''-> (b') b' \!
    \mark \default  % 2
    fis'8-> \ff (b') \> b' b'4-> (cis''8) \!

    %\break

    \bar "||"
    \time 9/8
    b'4-> (fis'8) b'4-> (e'8) b'4-> (cis''8)
    \bar "||"
    \time 6/8
    b'4-> fis'8-. gis' (fis' e')
    fis'8 \< (b' fis') gis' (fis' e') \!
    fis'4.-> e''8 (d'' \> cis'')
    b'8 (fis' b') \! cis'' (e' cis'')

    %\break

    b'8 (fis' b') e'' (d'' cis'')
    b'8 (a' gis' fis' d' \> e')
    fis' (b \! fis') e' (d' cis')
    b8-> \mf (e) r cis'-> (fis) r
    b8-> (e) r a-> (b,) r
    b8-> \< (e) r e'-> (g) r \!

    %\break

    b8-> (e) r a-> (b,) r
    \mark \default  % 3
    R2.*4
    fis'8 \mf \< (eis'4--) dis'4.-- \!
    ~dis'4. cis'--
    ~cis'-- b--
    R2.

    %\break

    r4. fis'8 \f (eis'4->)
    dis'2.--
    cis'4.-- \> b-- \!
    a4. \< (~a4 b8->) \!
    b4.-- \> fis-- \!
    b,8 \< (fis b) b (fis b,)

    %\break

    b,8 (fis b) b \! (fis b,)
    b,8 \> (fis b) b (fis b,) \!
    b,8 (fis b) b (fis b,)
    \mark \default  % 4
    b,8 \< (fis b) \> b (fis b,) \!
    b,8 (fis \< b) fis' (b fis) \!
    b,8 (fis \> cis') fis' (b fis) \!
    b,8 (fis b) \< fis' (b fis) \!

    %\break  % page 7

    b,8 (fis b) fis' (cis' fis)
    cis8 (fis b) fis'-> \txtDown "dim" (b fis)
    b,8 (fis b) fis' (b fis)
    a16 (dis'-> ~dis'4 \> ~dis'4.
    ~dis'4.) \! r
    R2.*2
    r4. f'16 \f (dis'-> ~dis'4)

    %\break

    d''16 (b'-> ~b'4 \txtDown "cresc" ~b'4.
    ~b'2.)
    dis''8 \< dis'' dis'' dis'' dis'' dis''
    dis''8 dis'' dis'' dis'' dis'' dis'' \!
    \mark \default  % 5
    R2.*3
    b'8-> \f (fis' \< b') fis'-> (b' fis') \!

    %\break

    \bar "||"
    \time 9/8
    b'8-> (e') e' e'-> r r r4.
    \bar "||"
    \time 6/8
    r4. g,8 \mf (e b
    e8 g, e b e g,
    e b e) r4.
    R2.

    %\break

    r4. g,8 (e b
    e8 g, e b e g,
    e8 b e) r4.
    R2.*2
    \mark \default  % 6
    e'8-. \mf e'-. \< e'-. fis'-> fis'-. fis'-. \!
    e'8-. \> e'-. e'-. d'-. d'-. d'-. \!

    %\break

    e'8-. \< e'8-. e'8-. a'-> \! a'-. a'-.
    e'8-. e'-. e'-.
    d'4 \< ~d'16 bes'-> \f
    gis'2.-> \< <>\!
    e16 \< (fis gis a b c' \! d'->) r16 r8 r
    R2.

    %\break

    \once \override TextSpanner.bound-details.left.text = \markup { \italic "allargando" }
    \once \override TextSpanner.bound-details.right.text = \markup { \italic "molto" }
    e'8 \f \< \startTextSpan gis' b' d''4.-> \ff
    ~d''4. \< ~d''4 \stopTextSpan ~d''16 \! [d''-^]
    e''8-^ \fff \txtUp "a tempo" e'' (b' \> gis' e' b) \!
    e'8 \< (gis' b' gis' b' e'') \!
    \mark \default  % 7
    <<  % use parallel music, give one voice just to the hairpins
      {
        c''2.
        ~c''2.
      }
      \\
      {
        \override Hairpin.minimum-length = #5
        s4 \> s8 \mf s8 s16 \< s8. \!
        s4 s2 \> <>\!
      }
    >>

    %\break

    d''8-> \f (a' \> d'' a' fis' d') \!
    d''8-> d'' \> (a' fis' d' a) \!
    d''8-> a' \> (fis' d' a) \! r
    R2.*4 _\markup { \italic "          poco calmando" }

    %\break  % page 8

    \bar "||"
    \mark \default  % 8
    \key d \major
    g,2. \p
    ~g,2.
    ~g,2.
    ~g,2.
    g,2. (\< <>\!
    b,2.)
    ~b,2. \txtDown "dim"
    ~b,2. \> <>\!

    %\break

    e2. \p
    ~e2.
    ~e2. \txtDown "poco dim"
    ~e2.
    ~e2.
    ~e2.
    ~e2.
    \mark \default  % 9
    e2. ~ \< <>\!

    %\break

    e2.
    ~e2. \> <>\!
    e2. ~ \< <>\!
    e2. \txtDown "      dim"
    ~e2.
    ~e2. ~

    %\break

    e4. \< ~e4 \! r16 d-> \sf
    e4.-> \sf \> ~e4 \! r16 d->
    e2.-> ~ \> <>\!
    e2.
    \mark \default  % 10
    d8 r r r4.
    R2.

    %\break

    gis8 \mp (e \< gis b e' gis') \!
    b'8-> \f (e'' \> b' gis' e' b) \!
    gis'8-> (e' b gis e b,)
    R2.*6

    %\break  % page 9 -> 10

    aes,8 (des \< f aes des' f') \!
    aes8 \< (des' f') aes'-> \f \> (f' des' \!
    aes8) f' \> (des' aes f \! des)
    \mark \default  % 11
    g,2. \pp
    (~g,4. ~g,4 aes,8-> \sf)
    g,4. \pp (~g,4 aes,8-> \sf)

    %\break

    g,2. \pp
    ~g,2.
    R2.*2
    r8 r d-> \mf (f \< bes d') \!
    f'8-> \f \> (d' bes f d bes,) \!
    \mark \default  % 12
    R2.*11

    %\break

    r4. fis4-^ \sf r8
    cis'8 r r r4.
    R2.
    \mark \default  % 13
    r8 gis, \mf \< (cis dis gis cis') \!
    eis'8-> \f (cis' gis) fis'-^ \txtDown "marcato" \txtUp "un poco meno vivo: pesante" fis' fis'
    gis'8-^ gis' gis' gis'-^ gis' gis'
    fis'8-^ fis' fis' fis'-^ fis' fis'

    %\break

    eis'8 \> (gis eis) \! gis \< (cis' eis'
    gis'8 cis'' cis'') d''4.-^-- \f
    d''4-^-- cis''-^-- b'-^--
    d''4.-^-- d''-^--
    cis''4.-^-- r \txtUp "piu pesante"
    fis2.-^
    fis2.-^

    %\break

    r8 b, (e) b-> \< (e' b') \!
    r8 e (b \<) cis'-> (g' cis'') \!
    \mark \default  % 14
    r8 ais \< (cis' fis' ais' cis'') \!
    cis''8-> (cis'' ais' fis' cis' ais)
    cis2.-^ ^\markup { \italic "sempre piu" \dynamic ff }
    ~cis2.

    %\break

    r8 d' \< (f' bes' d'') \! d''
    r8 e' \< (g' c'' e'') \! e''
    r8 cis' \< (fis' ais' cis'') \! cis''
    cis''8-> cis'' cis'' ais' (fis' cis')
    cis'2.-^ \<
    ~cis'2. <>\!

    %\break

    \mark \default  % 15
    r8 \txtUp "molto pesante e brillante" d' \< (f' bes' d'') \! d''
    r8 e' \< (g' c'' e'') \! e''
    r8 cis' \< (fis' ais' cis'') \! cis''
    r8 d' \< (f' bes' d'') \! d''
    r8 e' \< (g' c'' e'') \! e''

    %\break

    r8 cis' \< (fis' ais' cis'') \! cis''
    r8 ^\markup { \italic "sempre" \dynamic fff } c' \< (es' aes' c'' es'') \!
    r8 d' \< (f' bes' f' bes') \!
    r8 e' \< (g' c'' g' c'') \!
    \sectionLabel "Tempo Iº"
    r8 d' (fis' \< b' fis' \! b' \txtDown "molto")

    %\break  % page 11

    d''4-> \sfz d''8-> b' (fis' d')
    d''4-> \> (b'8) fis' (d' b) \!
    d''8-> (b' \> fis' d' b fis \!
    \mark \default  % 16
    d8) r r r4.
    R2.*3
    b8 \p \txtUp "scherzando" (cis' b cis' b cis')
    b8 (cis' b cis' b cis')

    %\break

    g8 \txtDown "cresc" (b g b g b)
    g8 (b g b g b)
    \mark \default  % 17
    b'8 \mf (cis'' b' cis'' b' cis'')
    b'8 \txtDown "cresc" (cis'' b' cis'' b' cis'')
    g'8 (b' g' b' g' b')
    g'8 \< (b' g' b' g' b') \!
    e8 \ff (b cis' g'-> cis' b)

    %\break

    e8 (b cis' g'-> cis' b)
    e8 \f (b cis' g'-> \txtDown "dim" cis' b)
    e,8 (b, \> cis g-> cis b,) \!
    \mark \default  % 18
    R2.*2
    r4. fis'8-> \mf \< (b fis') \!
    b'8-> (fis' b') fis'-> (b fis')

    fis'8-> \f (b \txtDown "cresc molto") fis'-> fis'-> (b) fis'->
    fis'8-> (b) fis'-> fis'-> (b) fis'->
    fis'8-> (b) \< fis'-> fis'-> (b) fis'->
    fis'8 (b fis') fis' \fff (b') b'-.
    b'4-> \txtDown "dim" (cis''8) b'4-> (fis'8)
    b'4-> (e'8 \>) b'4-> (cis''8) \!

    %\break

    b'4-> \mf fis'8-. gis' (fis' e')
    fis'8 (b' fis') gis' (fis' e')
    fis'4.-> e'8 (d' cis')
    b8 (fis' b') cis'' (e' cis'')
    b'8 (fis' b') e'' (d'' cis'')
    b'8 (a' gis' fis' d' e')

    %\break

    fis'8 (b fis') e' (d' e')
    fis'8 (b fis') r4.
    \mark \default  % 19
    b8-> \mf (e) r cis'-> (fis) r
    b8-> (e) r a-> (b,) r
    b8-> (e) r e'-> (g) r
    b8-> (e) r fis'-> (b) r

    %\break

    b'8 \p (a' gis' fis' e' d')
    cis'8-> \txtDown "cresc poco a poco" (b) b e'-> (b) b
    fis'8-> (b) b e'-> (b) b
    fis'8-> (b) b gis'-> (b) b
    fis'8-> (b) b e'-> (b) b
    fis'8-> (b) b e'-> (b) b
    fis'8-> (b) b gis'-> (b) b
    a'8-> (b) b ais'-> (b) b

    %\break

    b'8-> (b) b cis''-> \< (b') b'
    d''8-> (b') b' \! e''-> (b') b' \!
    \mark \default  % 20
    fis'-> (e' d' cis' b) fis'->
    (e'8 d' cis' b) fis'-> (e'
    d' cis' b) fis'-> (e' d'
    cis'8 b) r g'-> \> (fis' e'

    %\break

    \bar "||"
    \time 5/8
    d'8 cis' b a g) \!
    \bar "||"
    \time 6/8
    fis8 r r r4.
    R2.*3

    %\break  % page 12

    b8 \p (fis b,) b, (fis b)
    b8 (fis b,) b, \> (fis b)
    b8 (fis b,) \! b, (fis b)
    R2.
    r4. b,8 \mf (fis b)
    b8 (fis b,) b, (fis b)
    b8 \> (fis b,) b, (fis b) \!
    b8 \< (fis b,) b, (fis b) \!

    %\break

    b8 \> (fis b,) b, (fis \! b)
    b8 (fis b,) b, (fis b)
    b8 \< (fis b,) b, (fis b) \!
    b8 \> (fis b,) b, (fis b) \!
    b8 (fis b,) b, (fis b)
    b8 \< (fis b,) b, \> (fis b) \!
    b8 (fis b,) b, (fis b)
    \mark \default  % 21
    b8 \p (fis b,) b, (fis b)

    %\break

    b8 (fis b,) b, (fis b)
    b8 (fis b,) b, (fis b)
    b8 (fis b,) b, (fis b)
    R2.
    fis,8-> (b, fis) fis (b, fis,)
    fis,8 (b, fis) r4.

    %\break

    fis,8-> (b, fis) fis (b, fis,)
    fis,8 (b, fis) b,4-- \< ~b,16 b,-> \!
    fis,8-> (b, fis) r4.
    fis,8-> (b, fis) b,4 \< ~b,16 b,-> \!

    %\break

    fis,8-> \txtDown "poco cresc" (b, fis) r4.
    \mark \default  % 22
    fis,8-> (b, fis) r4.
    gis8-> \mf gis gis \txtDown "cresc" b-> b b
    d'8-> d' d' f'-> f' f' \f
    gis'-> \< gis' gis' b'-> b' b'

    %\break

    d''-> d'' d'' f''-> f'' \! f''
    b'8-> \ff (fis'! b'-.) b'8-> (fis' b'-.)
    b'8-> (fis' b'-.) b'8-> (fis' b'-.)
    b'8-> \< (fis' b'-.) b'8-> (fis' b'-.)
    b'8-> (fis' b'-.) b'8-> (fis' b'-.) \!

    %\break

    \bar "||"
    r4. ^\markup "Moderato" a'4.---^ \fff
    c''4---^ b'4---^ a'4---^
    g'4.---^ a'---^
    r8 b'4-^ \< ~b'4. \!
    dis''2. \fermata
    ~dis''8. r r r4.

    \bar "|."
  }
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
