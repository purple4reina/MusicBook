\header{
    title = "Divertimento"
    tagline = ""
}

\score {
    \layout {
        indent = #0
        ragged-last = ##f
    }
    \transpose c c' {
        \key c \major

        % m1
        \partial 2 r2
        r2 c4 c
        c r r c
        r d c f,
        g,4. r8 c,16 c c c c4:16
        \break

        % m5
        c: c: c,16 c c c c4:16
        c: c: c8 c' (b bes)
        bes8. (a16) a8 r b,! g b, g
        \break

        % m8
        c c' f, f g, g g, g
        g,4 (c8) r f4 g
        c r g, g,
        c16 g, c g, c g, b,16. (c32) d8-. (b,-. g,-. b,-.)
        \break

        % m12
        c8 r c r b, r g, b,
        c16 g, c g, c (d32 c b,16 c) d8-. (b,-. g,-. b,-.)
        c8 r c r b, r g, b,
        \break

        % m15
        r c16. c32 c8 r r c16. c32 c8 r
        r b,16. b,32 b,8 r c16 c, c c c c c c
        cis cis, cis cis cis cis cis cis d8 d d, r
        \break

        % m18
        g,8. (a,64 b, c d e8 d c b, a, d,)
        g,8. (a,64 b, c d e8 d c b, a, d,)
        g, r fis, r g, r fis, r
        \break

        % m21
        g, g fis, fis g, g fis, fis
        g, r g,16 g g, r g, g g, r g, g g g
        \break

        % m23
        g2 c4 g,
        g, (c,8) r c4 c
        c r r c
        r d c f,
        \break

        % m27
        g,4. r8 c,16 c c c c4:16
        c: c: c,16 c c c c4:16
        c: c: c8 c' (b bes)
        \break

        % m30
        bes8. (a16) a8 r b,! g b, g
        c c' f, f g, g g, g
        g,4 (c8) r f4 g
        c r g, g,
        \bar "||"
        \break

        % m34
        c4 b, a, d,
        g,1
        c4 b, a, d,
        g,1
        r8 c, e, g, c g, e, c,
        \break

        % m39
        r16 c, d, e, f, g, a, b, c8 g, e, c,
        r d, f, a, d a, f, d,
        r16 g, a, b, c d e f g8 d b, g,

        % m42
        c,16 c (b, c d c b, c) a, c (b, c) f, c (b, c)
        e, c (b, c d c b, c) a, c (b, c) f, c (b, c)
        \break

        % m44
        e, c (b, c d c b, c) a, c (b, c) f, c (b, c)
        e,8 e e e f, f f f
        g, g g g g g g g
        \break

        % m47
        c-. c-. e,-. c-. f,-. c-. g,-. c-.
        a, c e, c f, c g, c
        a, c e, c f, c g, c
        a, c e, c f, c g, c
        \break

        % m51
        a, a a a d, d d d
        g,4 r c r
        f, r r f,
        g, r g, r
        c8-. c-. e,-. c-. f,-. c-. g,-. c-.
        \break

        % m56
        a, c e, c f, c g, c
        a, c e, c f, c g, c
        a, c e, c f, c g, c
        a, c e, c f, c g, c
        \break

        % m60
        a, a a a d, d d d
        g,4 r c r
        f, r r f,
        g, r r2
        \break

        % m64
        g,2. (f,4)
        e,16 (f, g, a, b, c d e) f4 r
        g c'8 c' d' d' g g
        \break

        % m67
        e,16 (f, g, a, b, c d e) f4 r
        g c8 c d d g, g,
        c,4 r c c
        c2 r
        \bar "|."
    }
}

\score {
    \layout {
        indent = #0
        ragged-last = ##f
    }
    \transpose c c' {
        \key c \major
        \time 2/4

        % m1
        c8 r c r
        b, r b, r
        c4 a,8 f,
        g,16 g, (b,) d g d b, g,
        c,8 c c, c

        % m6
        c,16 (c) c c c c c c
        g,8 g g, g
        g,16 (g) g g g g g g
        c (e) g c' c (e) g c'
        f f, (a,) d f d a, f,
    }
}

\version "2.20.0"  % necessary for upgrading to future LilyPond versions.
