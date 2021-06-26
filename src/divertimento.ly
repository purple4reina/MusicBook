\header{
    title = "Divertimento"
    %tagline = "Rey Abolofia -- 503.515.9787 -- purple4reina@gmail.com -- v1.0.1"
}

%\paper {
%    page-count = 2
%}

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
    }
}


\version "2.20.0"  % necessary for upgrading to future LilyPond versions.
