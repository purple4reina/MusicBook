\header {
    title = "Divertimento"
    subtitle = "\"Die Hochzeit des Figaro\""
    composer = "Wolfgang Amadeus Mozart"
    arranger = "herausgegeben vom Trio di Clarone"
    poet = "Bass Clarinet"
    copyright = #(strftime "transcribed by Rey Abolofia, %Y" (localtime (current-time)))
    tagline = ##f
}

\paper {
    print-all-headers = ##t
    page-count = #5
}

\layout {
    indent = #0
    ragged-last = ##f
}

smallC   = \tweak font-size -2.5 c
smallCis = \tweak font-size -2.5 cis
smallD   = \tweak font-size -2.5 d
smallDis = \tweak font-size -2.5 dis
smallEs  = \tweak font-size -2.5 es


% MOVEMENT I

\score {
    \header {
        title = "I"
        subtitle = "Rondo \"Al desio di chi t'adora\""
        subsubtitle = "(\"Sieh mein Sehnen, des Herzens Bangen\")"
        opus = "nach KV 577 (4. Akt, Szene X)"
        composer = ##f
        arranger = ##f
        poet = ##f
    }
    \transpose c c' {
        \key c \major

        % m1
        \partial 2 r2^\markup { \bold Larghetto }
        r2 c4-\markup { \dynamic p \italic dolce } c
        c r r c
        r d c f,
        g,4. r8 <c, \smallC>16\p c c c c4:16
        \break

        % m5
        c:\sf c:\p <c, \smallC>16 c c c c4:16
        c:\sf c:\p c8 c' (b bes)
        bes8. (a16) a8 r b,! g b, g
        \break

        % m8
        c c' f, f g, g g, g
        g,4 (c8) r f4\f g
        c\> r\! g,\p g,
        c16\< g, c g, c g, b,16. (c32) d8-.\mf (b,-. g,-. b,-.)
        \break

        % m12
        c8\p r c r b, r g, b,
        c16\< g, c g, c (d32 c b,16 c) d8-.\mf (b,-. g,-. b,-.)
        c8\p r c r b, r g, b,
        \break

        % m15
        r c16. c32 c8 r r c16.\cresc c32 c8 r
        r b,16. b,32 b,8 r \newSpacingSection \override Score.SpacingSpanner.spacing-increment = #2 c16\mf \newSpacingSection \revert Score.SpacingSpanner.spacing-increment <c, \smallC> c c c c c c
        cis <cis, \smallCis> cis cis cis cis cis cis d8 d <d, \smallD> r
        \break

        % m18
        g,8.\sfp ^(a,64 b, c d e8 d c b, a, <d, \smallD>)
        g,8.\sfp ^(a,64 b, c d e8 d c b, a, <d, \smallD>)
        g,\mf r fis, r g, r fis, r
        \break

        % m21
        g,\p g fis, fis g, g fis, fis
        g, r g,16\cresc g g, r g, g g, r g,\f g g g
        \break

        % m23
        g2\>^\markup { \italic "poco rit." } c4\p^\markup { \italic "a tempo" } g,
        g, (<c, \smallC>8) r c4 c
        c r r c
        r d c f,
        \break

        % m27
        g,4. r8 <c, \smallC>16\p c c c c4:16
        c:\sf c:\p <c, \smallC>16 c c c c4:16
        c:\sf c:\p c8 c' (b bes)
        \break

        % m30
        bes8. (a16) a8 r b,! g b, g
        c c' f, f g, g g, g
        g,4 (c8) r f4\f g
        c\> r\! g,\p g,
        \bar "||"
        \pageBreak

        % m34
        c4\f^\markup { \bold Allegro } b, a, <d, \smallD>
        g,1
        c4\p b, a, <d, \smallD>
        g,1
        r8 <c, \smallC>\p e, g, c g, e, <c, \smallC>
        \break

        % m39
        r16 <c, \smallC> <d, \smallD> e, f,\cresc g, a, b, c8 g, e, <c, \smallC>
        r <d, \smallD> f, a, d a, f, <d, \smallD>
        r16 g,\f a, b, c d e f g8 d b, g,

        % m42
        <c, \smallC>16 c (b, c d c b, c) a, c (b, c) f, c (b, c)
        e, c (b, c d c b, c) a,\p c (b, c) f, c (b, c)
        \break

        % m44
        e, c (b, c d c b, c) a,\f c (b, c) f, c (b, c)
        e,8 e e e f, f f f
        g, g g g g g g g
        \break

        % m47
        c-. c-.\p e,-. c-. f,-. c-. g,-. c-.
        a,^\markup { \italic stacc. } c e, c f, c g, c
        a, c e, c f, c g, c
        a, c e, c f, c g, c
        \break

        % m51
        a,\cresc a a a <d, \smallD> d d d
        g,4\f r c r
        f, r r f,
        g, r g, r
        c8-. c-.\p e,-. c-. f,-. c-. g,-. c-.
        \break

        % m56
        a,^\markup { \italic stacc. } c e, c f, c g, c
        a, c e, c f, c g, c
        a,\cresc c e, c f, c g, c
        a, c e, c f, c g, c
        \break

        % m60
        a, a a a <d, \smallD> d d d
        g,4\f r c r
        f, r r f,
        g, r r2
        \break

        % m64
        g,2. (f,4)
        e,16\sf (f, g, a, b, c d e) f4\p r
        g c'8 c' d' d' g g
        \break

        % m67
        e,16\sf (f, g, a, b, c d e) f4\p r
        g c8 c d d g, g,
        <c, \smallC>4 r c\f c
        c2 r
        \bar "|."
        \pageBreak
    }
}


% MOVEMENT II

\score {
    \header {
        title = "II"
        subtitle = "Arietta \"Voi che sapete\""
        subsubtitle = "(\"Sagt, holde Frauen\")"
        opus = "nach KV 492 (2. Akt, Szene III)"
        composer = ##f
        arranger = ##f
        poet = ##f
    }
    \transpose c c' {
        \key c \major
        \time 2/4

        % m1
        c8^\markup { \bold Andante }-\markup { \dynamic p \italic dolce } r c r
        b, r b, r
        c4 a,8 f,
        g,16 g, (b,) d g d b, g,
        <c, \smallC>8 c <c, \smallC> c
        \break

        % m6
        <c, \smallC>16 (c) c c c c c c
        g,8 g g, g
        g,16 (g) g g g g g g
        c (e) g c' c (e) g c'
        f f, (a,) d f d a, f,
        \break

        % m11
        g, (g) g, g, g,8 g,
        <c, \smallC>-! c-! <c, \smallC>-! r
        r16 g,\mp b, (d) g d b, g,
        r g, c (e) g d b, g,
        <d, \smallD>8 d <d, \smallD> d
        \break

        % m16
        r16 g, b, (d) g d b, g,
        e,\p g, b, e b, dis fis b
        e e, (g,) b, e b, g, e,
        g, (b,) e g a, (a) a, a,
        \break

        % m20
        d <d, \smallD> (fis,) a, c a, fis, <d, \smallD>
        b,8\mf r r16 b, d g
        a8 r r16 a fis d
        g8 r r16 e c a,
        d <d, \smallD> (fis,) a, c a, fis, <d, \smallD>
        \break

        % m25
        b,8 r r16 g d b,
        a,8 r fis,16 a, <d, \smallD> fis,
        g,8 r <es, \smallEs> r
        r16 <d, \smallD> (fis,) a, d\> a, fis, <d, \smallD>
        bes,8\p r bes, r
        \break

        % m30
        a, r a, r
        f, r f, r
        bes, r bes, r
        <d, \smallD> r <d, \smallD> r
        <es, \smallEs> r <es, \smallEs> r
        f, r f, r
        \break

        % m36
        bes,-! r r16 bes f d
        bes,8\p r bes,16 f d bes,
        a,8\cresc r a,16 f d a,
        gis,8 r gis, r
        a, a a, a
        \break

        % m41
        d8 r e f
        e\mf r f r
        d r e r
        a,16 a\> e c a,8\! r
        e\p r e r
        \break

        % m46
        f r f r
        fis r fis r
        g r g r
        gis\cresc r gis r
        a r d c
        b,\f g, c a,
        \break

        % m52
        fis, r fis, r
        g,\>^\markup { \italic "poco rit." } f,! e, <d, \smallD>\!
        <c, \smallC>\p^\markup { \italic "a tempo" } r c r
        b, r b, r
        c4 a,8 f,
        g,16 g, (b,) d g d b, g,
        \pageBreak

        % m58
        <c, \smallC>8 c <c, \smallC> c
        <c, \smallC>16 (c) c c c c c c
        g,8 g g, g
        g,16 (g) g g g g g g
        c (e) g c' c (e) g c'
        \break

        % m63
        f16 f, (a,) d f d a, f,
        g,\> (g) g, g, g,8 g,\!
        a,\pp r a,\< r\!
        e,\p r e, r
        f, r f, r
        \break

        % m68
        g, r g, r
        <c, \smallC>16 (e,) g, c g, (b,) d g
        c (e) g c' g, (b,) d\> g\!
        c8\pp r r4
        \bar "|."
    }
}


% MOVEMENT III

\score {
    \header {
        title = "III"
        subtitle = "Aria \"Non più andrai, farfallone amoroso\""
        subsubtitle = "(\"Nun vergiß leises Flehn, süßes Kosen\")"
        opus = "nach KV 492 (1. Akt, Szene VIII)"
        composer = ##f
        arranger = ##f
        poet = ##f
    }
    \transpose c c' {
        \key c \major

        % m1
        <c, \smallC>2\f^\markup { \bold "Allegro vivace" }  r
        <c, \smallC>4\p r <c, \smallC> r
        g, g g, r
        g, r g, r
        <c, \smallC> c <c, \smallC> <c, \smallC>8.\mf (e,16
        \break

        % m6
        g,4^\markup { \italic ten. }) e,8. (g,16 c4^\markup { \italic ten. }) g,8. ^(c16
        e4-\markup { \dynamic mfp } c2) r4
        g, r g, r
        <c, \smallC>4 c'16 (d' e' d') c'4 <c, \smallC>8.\mf (e,16
        g,4^\markup { \italic ten. }) e,8. (g,16 c4^\markup { \italic ten. }) g,8. ^(c16
        \break

        % m11
        e4_\markup { \dynamic mfp } c2) r4
        g, r g, r
        <c, \smallC>4 c16 (b, c b,) c4  r
        g\f r d r
        g, r g8\p d a d
        \break

        % m16
        b d a d g d fis d
        g (d' b g) fis (a fis d)
        g4 r g b16 (a g a)
        \break

        % m19
        b8 b a a g g d d
        g,4 r cis2
        d8 fis d fis a16 (g fis g e8 g)
        fis d d d cis2
        \break

        % m 23
        d8 fis d fis a16 (g fis g e8 g)
        fis d\cresc d d d d d d
        g\f b a g d'4 d
        g,8\p g b g d4 <d, \smallD>
        \break

        % m27
        g,8 g b g d4 <d, \smallD>
        g,8\cresc g b g d4 <d, \smallD>
        g,8\f g b g d4 <d, \smallD>
        g2.\p\fermata r4
        \break

        % m31
        <c, \smallC> r <c, \smallC> r
        g, g g, r
        g, r g, r
        <c, \smallC> c <c, \smallC> <c, \smallC>8.\mf (e,16
        g,4^\markup { \italic ten. }) e,8. (g,16 c4^\markup { \italic ten. }) g,8. ^(c16
        \break

        % m36
        e4-\markup { \dynamic mfp } c2) r4
        g, r g, r
        <c, \smallC> c'16 (d' e' d') c'4 <c, \smallC>8. (e,16
        g,4^\markup { \italic ten. }) e,8. (g,16 c4^\markup { \italic ten. }) g,8. ^(c16
        e4-\markup { \dynamic mfp } c2) r4
        \pageBreak

        % m41
        g,4 r g, r
        <c, \smallC> c16\f b, a, g, c8 c c16 b, a, g,
        c4 c8 g, c g, c g,
        \break

        % m44
        c4 c16 b, a, g, c8 c c16 b, a, g,
        c4 c8 g, c g, c g,
        c4 <c, \smallC>8. <c, \smallC>16 <c, \smallC>4 r
        r <c, \smallC>8. <c, \smallC>16 <c, \smallC>4 r
        \break

        % m48
        r <c, \smallC>8. <c, \smallC>16 <c, \smallC>4 r
        r <d, \smallD>8. <d, \smallD>16 <d, \smallD>4 r
        r g,8. g,16 g,4 r
        r <c, \smallC>8. <c, \smallC>16 <cis, \smallCis>4 r
        r <d, \smallD>8. <d, \smallD>16 <d, \smallD>4 r
        r <dis, \smallDis>8. <dis, \smallDis>16 <dis, \smallDis>4 r
        \break

        % m54
        e,8 g\p (fis e dis b, cis dis!)
        e (g fis e dis b, cis dis!)
        e2 r4\fermata r
        e,8\p e e e e e e e
        \break

        % m58
        <d, \smallD>8 d\cresc d d d d d d
        g,\f g g g g g g g
        c4_\markup { \italic "piano assai" } c8. c16 e4 g
        c' c8 c c c e c
        \break

        % m62
        g,8 g, g8. g16 g4 c
        b, g,8 g, g,2:8
        c: c: f,: f,:
        c8 c' c' c' c' c c c
        \break

        % m67
        g,8 g g g g g, g, g,
        <c, \smallC>\f c e c d4 <d, \smallD>
        g,8\p g b g d4 <d, \smallD>
        g,8\f g b g d4 <d, \smallD>
        g,8\p g b g d4 <d, \smallD>
        \break

        % m72
        g,8\cresc g b g d4 <d, \smallD>
        g,8\f g b g d4 <d, \smallD>
        g,2.\p\fermata r4
        <c, \smallC> r <c, \smallC> r
        g, g g, r
        \break

        % m77
        g,4 r g, r
        <c, \smallC> c <c, \smallC> <c, \smallC>8.\mf (e,16
        g,4^\markup { \italic ten. }) e,8. (g,16 c4^\markup { \italic ten. }) g,8. ^(c16
        e4-\markup { \dynamic mfp } c2) r4
        g, r g, r
        \break

        % m82
        <c, \smallC>4 c'16 (d' e' d') c'4 <c, \smallC>8.\mf (e,16
        g,4^\markup { \italic ten. }) e,8. (g,16 c4^\markup { \italic ten. }) g,8. ^(c16
        e4-\markup { \dynamic mfp } c2) r4
        g, r g, r
        <c, \smallC>\f c8._"(Partono tutti alla" c16 e4 g
        \break

        % m87
        c'_"militare)" c r c
        g, g,8. g,16 g,4 c
        g, g8 g g g g g
        c4 <c, \smallC> r c
        f, f r f
        \break

        % m92
        c r c c8. c16
        g,4 g g, g,
        \tuplet 3/2 4 { \newSpacingSection \override Score.SpacingSpanner.spacing-increment = #3 c8\mf \newSpacingSection \revert Score.SpacingSpanner.spacing-increment <c, \smallC> e, g, e, g, c g, e, g, e, <c, \smallC> }
        g,4 g g, g,
        \break

        % m96
        \tuplet 3/2 4 { <c, \smallC>8 c e g e g c' g e g e c }
        g,4 g g g
        c r8 \tuplet 3/2 8 { g,16 (a, b, } c4) c
        c r8 \tuplet 3/2 8 { g,16 (a, b, } c4) c
        c2 r
        \bar "|."
    }
}

\version "2.20.0"  % necessary for upgrading to future LilyPond versions.
