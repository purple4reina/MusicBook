\header {
    title      = "Symphony No. 3 in C Minor, Op. 78"
    composer   = "Camille Saint-Saens"
    instrument = "Bass Clarinet"
    copyright  = #(strftime "transcribed by Rey Abolofia, %h %Y" (localtime (current-time)))
    tagline    = ##f
}

\layout {
    indent = #0
    ragged-last = ##f
}

\paper {
    print-all-headers = ##t
}

\markup \vspace #1  % extra space after title

\score {
    \header {
        title      = "I"
        composer   = ""
        instrument = ""
    }

    \transpose c c' {
        \clef treble
        \key f \major
        \time 6/8
        \compressEmptyMeasures
        \override DynamicTextSpanner.style = #'none
        \autoBreaksOff
        \autoLineBreaksOff

        \tempo "Adagio"
        R2.*2

        <<
            { }
            \new CueVoice {
                r8 ^"oboe" d'' (e'' f'' a''4)
                (a''4.) \fermata (a''8) r8 r \fermata
            }
        >>

        R2.*2

        <<
            { }
            \new CueVoice {
                r8 ^"flute" d' e' f' a'4
                (a'4.) \fermata (a'8) r8 r \fermata
            }
        >>

        R2.*3
        \bar "||"
        \break

        \tempo "Allegro Moderato"

        <<
            { }
            \new CueVoice {
                r16 ^"violin" e' e' d' d' e' e' c' c' d' d' e'
            }
        >>

        R2.*15

        \mark \default
        R2.*11

        <<
            { }
            \new CueVoice {
                e'''16 ^"flute" c''' c''' e''' e''' d''' d''' c''' c''' b'' b'' r
            }
        >>

        <<
            { }
            \new CueVoice {
                r16 ^"clarinet" c' c' d' d' e' e' e' e' e' e' r
            }
        >>

        bes8-. r r r4 g8-.
        \break
        f8-. \cresc r r r4 d'8-.
        bes8-. r r r4 \f g8

        \mark \default
        c'8-. r r r4 r8
        R2.*2
        r4 r8 \p e4.
        (d4. \cresc \endcr es
        bes,4. es4) r8
        \break

        a,2. \f \> ~
        a,2. \p ~
        a,2. \dim ~
        a,2. \pp ~
        a,8 r r r4 r8
        R2.*5

        \mark \default
        R2.
        \mf a4. _\markup { \italic "espress." } (a4) (d'8)
        e'4. \espressivo (e'4) (a8)
        \break

        a4 \< (f'8 ~ f'4 \sf \> e'8 \!)
        r4 d'8 (d'4) (cis'8)
        c'!4 \< (aes'8 ~ aes'4 \sf \> g'8 \!)
        r4 f'8 (~ f'4 e'8
        es'8) r r r4 r8
        R2.*2
        d4. \f g
        \break

        a4. a,
        d4. g
        a4. a,

        \mark \default
        f,2. \ff
        (f,2.)
        bes,2.
        (bes,2.) \dim
        f,2. \mf
        (e,2.->)
        \break

        f,2. \dim
        (e,2.)
        f,4. (g,
        gis,4. a,) \p
        R2.*6

        \mark \default
        R2.*8

        <<
            { }
            \new CueVoice {
                r8 ^"flute" e''' (f''') f''' (e''') r
                r8 e''' (f''') f''' (e''') r
                r4 r8 bes'4. ( <>)
                \break
            }
        >>

        r4 r8 aes4. \pp (

        \mark \default
        es8) r r r4 r8
        R2.*5
        es2. \p ~
        es4. \< (d)
        des4. c
        (c4. \mf) (ces
        bes,4. \> a,)
        bes,2. \p (
        \break

        es4) r8 r4 r8
        R2.*2
        \after 2. \> es2. ~ \pp \< \!
        es8 r8 \! r8 r4 r8
        \after 2 \dim es2. \mf ~
        es2. ~
        es2. \p ~

        \mark \default
        es4 r8 r4 r8
        \break

        R2.*5
        d2. \cresc ~
        d8 r r r4 r8
        d2. ~
        d8 r r r4 r8
        \bar "||"

        \key g \major
        d8-. \f r r r4 r8
        R2.*5
        \pageBreak

        r8 \f b,-. d-. e!4-> cis8
        b,4 d8 e4 cis8
        d4 b8-> ~ b a gis
        a4 e8 eis4 fis!8
        g4 d8 fis!4-> e8
        e4-> a,8 ~ a, d c
        b,4. r8 g' \ff d'-.
        \break

        b4. ~ b8 d'-. b-.
        g4. ~ g8 b-. g-.
        d4.-> r8 b-. g-.
        d4. ~ d8 g-. d-.
        b,4. ~ b,8 d-. b,-.

        \mark \default
        g,8 r g \ff (f4 e8
        es4 d8 g,8) r g (
        \break

        f4 \dim e8 es4 d8 \!
        g,8) r r r4 r8
        R2.*17

        \mark "I"
        R2.*10

        \mark \default
        R2.*9

        <<
            { }
            \new CueVoice {
                b''4 ^"flute" (aes''8 ~ aes'' fis'' des'')
                c'''4 ^"oboe" (b''8 ~ b'' g'' des'')
                c'''4 ^"flute" (b''8 ~ b'' fis'' d''!)
                \break
            }
        >>

        \after 2. \> a2. \p \< ~
        a4. \> ~ a8 \! r r
        R2.*4
        a2. \> \mf ~
        a4. ~ a8 \! r r
        R2.
        r4 r8 \p bes,4.-> \cresc
        a,4.-> bes,->
        g,4.-> a,->

        \mark \default
        b,!2. \f ~
        \break

        b,2. \>
        R2.*9 \!

        <<
            { }
            \new CueVoice {
                r4 ^"flute" r8 c'''4. ~
                c'''4 (d'''8 es'''4 c'''8)
                \bar "||"
            }
        >>

        \key f \major
        a,2. \ff ~
        a,2.
        a,2. ~
        a,2.

        \mark \default
        R2.*5

        <<
            { }
            \new CueVoice {
                r4 ^"clarinet" r8 a''16 g'' f'' e'' d''! c''
                \break
                b'!16 r16 r8 r8 a'16 g' f' e' des' c'
                b!8 r r
            }
        >>

        g4 \sf (e8)
        g4 \sf (e8) g4 \sf (e8)
        r4 r8 e4 \sf (a,8)
        e4 \sf (a,8) e4 \sf (a,8)

        \mark \default
        R2.*14

        <<
            { }
            \new CueVoice {
                r16 ^"violin" es'' es'' es'' es'' a'' r f''' f''' e''' e''' des'''
                r16 c''' c''' b'' b'' a'' r f'' f'' e'' e'' des''
                \break
            }
        >>

        a,2. \ff ~
        a,2. ~
        a,2. ~
        a,2. ~

        \mark \default
        a,8 r r _\markup { \italic "sempre" } r4 r8
        a4. \ff ~ a4 (bes8)
        a4. ~ a4 (d'8)
        e'4. ~ e'4 (a8)
        a4 (f'8-> ~ f'4 e'8)
        r4 d'8 ~ d'4 (cis'8)
        \break

        c'!4. (bes8 a g)
        f4. (e8 g f)
        g8 (a bes g' f' e')
        d'4. (e'8 f' g')
        f4. (a8 d' e')
        f'4. (e'8 f' g')
        d'4. a
        \break

        f,2. \fff ~
        f,2.
        bes,2. ~
        bes,2. \dim
        f,2. \mf
        (e,2.->)
        f,2. \dim
        \( (e,2.)
        f,4. g,
        gis,4. a, \p \)
        R2.*9
        \break

        <<
            { }
            \new CueVoice {
                r8 \pp ^"oboe" (ges'' f'' ges'' e'' f''
                ges''8 bes'' a''! aes'' ges'' f''
                ges''2.)
            }
        >>

        \mark \default
        \bar "||"
        \key d \major
        cis2. \pp ~
        cis2. ~
        cis8 r8 r r4 r8
        R2.*24

        \mark \default
        R2.*30

        <<
            { }
            \new CueVoice {
                \cueClef bass
                r4 ^"bass" r8 bes,4 r8
                cis!4 r8 fis4 r8
                \break

                e4 r8 r4 r8
                g,4 r8 r4 r8
                R2. \fermata

                \bar "||"
                \tempo "Poco Adagio"
                \key es \major
                \time 4/4
                aes,1 ^"organ" ~
                aes,1
                \cueClefUnset
            }
        >>

        R1*11

        \mark \default
        R1*11
        \mark \default
        R1*15

        <<
            { }
            \new CueVoice {
                r4 ^"clarinet" c'' (e'' g'')
                bes''2. aes''4 ~
                aes''4 g''2 f''4 ~
                \break

                f''4 \> e''2 es''4 ~
                es''4 \! (d'' g'' f'')
            }
        >>

        \mark \default
        \after 8 \espressivo bes,1 \pp
        (es4) r r2
        R1*13
        \mark \default
        R1*9
        \mark \default
        R1*7

        <<
            { }
            \new CueVoice {
                \tuplet 3/2 { a'8-. ^"violin" bes'-. r } \tuplet 3/2 { b'-. c''-. r } r2
                \tuplet 3/2 { g''!8-. aes''-. r } \tuplet 3/2 { a''-. bes''-. r } r2
                \break
                \pageBreak

                \tuplet 3/2 { r8 ^"violin" es' d' } \tuplet 3/2 { r es' ces' }
                \tuplet 3/2 { r d' es' } \tuplet 3/2 { r g' es' }
            }
        >>

        fis,2. \pp ~ fis,8 r
        R1
        a,2. ~ a,8 r
        R1*2
        \mark \default
        R1*8

        <<
            { }
            \new CueVoice {
                bes''4 ^"violin" (d''' g'''! bes''')
                bes'''2 ~ (bes'''8 a''' g''' f''')
                \break
            }
        >>

        bes,1 \p ~
        bes,1 ~
        bes,1
        aes,1
        g,1
        g,2 (aes,
        a,1 \dim
        bes,4) \pp r4 r2
        R1

        \mark "X"
        R1*2
        fis,1 \pp ~
        \break

        fis,2 r
        R1*2
        fis,1 ~
        fis,2 r
        R1*2
        fis,2 r
        f,!1 ~
        f,2 r
        R1*5
        R1 \fermata
        \bar "|."
    }
}

\score {
    \header {
        title      = "II"
        composer   = ""
        instrument = ""
    }

    \transpose c c' {
        \key f \major
        \time 6/8
        \compressEmptyMeasures
        \override DynamicTextSpanner.style = #'none

        \tempo "Allegro Moderato"
        R2.*12
        r4 r8 r4 \f f8
        e2.
        d2.
        a,2. ~

        \mark \default
        a,4. r4 r8
        R2.*21
        \mark \default
        R2.*20
        \mark \default
        R2.*12
        \bar "||"
        \key d \major
        \tempo "Presto"
        R2.*10
        \mark \default
        R2.*12

        \mark \default
        R2.*12
        \mark \default
        R2.*4
        \bar "||"
        \key bes \major
        R2.*21
        \mark \default
        R2.*20

        \mark \default
        R2.*8
        \bar "||"
        \mark "I"
        \key a \major
        R2.*21
        \mark \default
        R2.*14
        \mark \default

        R2.*14 \mark \markup { \musicglyph "scripts.ufermata" }
        \bar "||"
        \key f \major
        \tempo "Allegro Moderato"
        R2.*12
        r4 r8 r4 f8 \f
        e2.

        d2.
        a,2. ~
        \mark \default
        a,4. r4 r8
        R2.*21
        \mark \default
        R2.*20
        \mark \default
        R2.*10
        \mark \default
        R2.*2
        \bar "||"

        \key bes \major
        \tempo "Presto"
        R2.*3
        bes,2. \p
        c2.
        es2. ~
        es4. d
        c4. f
        g2. ~
        g2.
        f2.

        (d2.)
        g2.
        a2.
        bes4. es
        f4. g
        a2. ~
        a2.
        bes2.
        g2.
        d2.
        es2.
        bes,2.
        bes2.

        \mark \default
        f2.
        es4. d4 c8
        d2.
        es2. ~
        es4. \cresc g4 a8 \!
        bes2. ~
        bes4. a4 g8
        g2. ~
        g2.
        f8 \f r8 r r4 r8
        R2.*3

        \mark \default
        R2.*46
        \mark \default
        R2.*4
        \bar "||"
        \tempo "Allegro Moderato"
        R2.*10
        R2. \fermata
        r4 r8 r4 r8 \fermata

        \bar "||"
        \key d \major
        \time 6/4
        \tempo "Maestoso"
        R1.*8
        \mark \default
        \bar "||"
        \time 9/4
        R4*9
        \bar "||"
        \time 6/4
        R4*6
        \bar "||"
        \time 9/4
        R4*9
        \bar "||"
        \time 6/4
        R4*6
        \bar "||"
        \time 9/4
        R4*9
        \bar "||"
        \time 6/4
        R4*6
        \bar "||"
        \time 9/4
        R4*9
        \bar "||"
        \time 6/4
        R4*6
        \bar "||"
        \time 9/4
        R4*9
        \bar "||"
        \time 6/4
        r2. d2. \ff ~
        \bar "||"
        \time 9/4
        d8 r r4 r r2. r
        \bar "||"
        \time 6/4
        r2. a,2. ~
        \bar "||"
        \time 9/4
        a,8 r r4 r r2. r
        \bar "||"
        \time 6/4
        r2. fis,!2. ~
        \bar "||"
        \time 9/4
        fis,8 r r4 r r2. r
        \bar "||"
        \time 6/4
        r2. d2. ~

        \mark \default
        \bar "||"
        \time 2/2
        \tempo "Allegro"
        d8 r8 r4 r2
        R1*14
        \mark \default
        R1*14
        \mark \default
        R1*6
        gis,1 \p \< ~
        gis,1 ~
        gis,1 \> ~
        gis,1 \cresc ~
        gis,1 ~

        gis,1 \!
        fis,1 \f ~
        fis,1 ~
        fis,1
        e,1 \dim ~
        e,1 ~
        e,1 ~
        e,4 \p r r2
        R1*2
        \mark #23
        R1*12
        \mark \default
        R1*16
        \mark \default
        R1*18

        \mark \default
        r4 a8 \f gis a4 r
        r4 a8 gis a4 r
        r4 a8 gis a4 r
        r4 a8 gis a4 r
        r4 c'8 b c'4 r
        r4 c'8 b c'4 r
        r4 c' r c'

        r4 c' r c'
        R1*15
        r2 g, \f
        fis,2 g,

        e,2 fis,
        \tuplet 3/2 { g,2 b, ais, }
        a,!1 ~
        a,4 r r2
        r2 a,
        g,2 a,
        fis,2 g,
        \tuplet 3/2 { a,2 cis! c }
        b,1 ~
        b,4 b8 b g4 d8 d

        b,4 g8 g d4 b,8 b,
        g,4 r r2
        fis2. (g4
        a4 g fis gis
        a4) r r2
        gis2. (a4
        b4 a gis ais

        b4) r r2
        ais4 (b ais b
        cis'4 b cis' dis'
        \mark #52
        e'4) r r2
        R1*14

        cis!1 \p \cresc ~
        cis1 ~
        cis1
        b,1 \mf ~
        b,1 \dim ~
        b,1
        a,1 \pp ~
        a,4 r r2
        R1*16
        \mark #78
        R1*12

        e,1-^ \f ~
        e,1
        fis,-^
        a,1-^ ~
        a,2 g,-^
        fis,2-^ b,2-^
        c1-^ ~
        c1
        a,1-^ ~
        a,2 b,-^
        c1-^

        d1-^
        e2 d
        c2 b,4 a,
        g,2 f ~
        f2 e
        d4 e f g
        a2 c
        \mark #130
        d1 \sf
        R1*20

        \mark #156
        R1*9
        \bar "||"
        \time 3/1
        \tempo "Piu allegro"
        a,1 _\markup { "une mesure comme trois du mouv't precedent" } \ff ~ a, ~ a, ~

        a,2 r r1 r1
        a,1 ~ a, ~ a, ~
        a,2 r r1 r1
        a,2 r a r a r
        g2 r g r fis r
        fis2 r e r a, r

        \tempo "Molto allegro"
        d4 r r2 r1 r1
        R1*3
        r2 a'2 gis' g' ~ g' fis'4 e'
        fis'2 d' cis' c' ~ c' b4 a
        \mark #182
        g1 \ff fis ^\markup { \italic pesante } \sf ~ fis2 g

        a1 \sf ~ a2 g fis gis
        a1 gis \sf ~ gis2 a
        b1 \sf ~ b2 a gis ais
        \bar "||"
        \time 3/2
        b4-^ _\markup { "meme valeur de mesure" } a!-^ gis-^ ais-^ b-^ fis-^
        gis4-^ ais-^ b-^ fis-^ gis-^ ais-^

        b4-^ r r2 r
        R2*3
        r4 g2 fis a4 ~
        a4 gis2 b a4 ~
        a4 gis fis eis e d
        dis4 e fis g d' gis

        a4 r r2 r
        a,1.
        \bar "||"
        \time 3/1
        \tempo "Sans presser"
        d4 r r2 r1 r
        R1*3*5
        d1 ~ d ~ d \fermata
        \bar "|."
    }
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
