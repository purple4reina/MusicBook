

%%%% B-flat MAJOR FOR SOREN PAGE 2 %%%%


\header {
    title = "Etudes in B-flat Major"
}



% articulation etude
\score {
    \transpose c bes' {
        \key c \major
        c'8 (g) g-. g-. g-. g-. b (g)
        c'8 (g) g-. g-. g-. g-. b (g)
        c'8 (g) b (g) c' (g) b (g)
        c'8 (g) b (g) c' (b) a-. gis-.
        \bar "||"
        \mark \default
        a8 (e) e-. e-. e-. e-. gis (e)
        a8 (e) e-. e-. e-. e-. gis (e)
        a8 (e) gis (e) a (e) gis (e)
        a8 (e) gis (e) a (g) a-. b-.
        \bar "||"
        \mark \default
        c'8 (g) g-. g-. g-. g-. f (g)
        e8 (g) g-. g-. g-. g-. b (g)
        c'8 (g) g-. g-. g-. g-. f (g)
        e8 (g) g-. g-. g-. g-. b (g)
        c'2 r
        \bar "|."
    }
    \layout {
        indent = #0
    }
    \header {
        piece = "Articulation Etude - From Kroepsch 416 Studies for Clarinet"
    }
}

% appalachian spring
\score {
    \transpose c c'' {
        \key bes \major
        \time 2/4
        \tempo 4 = 72
        \set Score.currentBarNumber = #487

        \partial 4 f,4\p
        (bes,8) bes,16 (c d bes, d es
        f8) f16 (es d8) c16 (bes,
        c8) c (c bes,
        c16 d c a, f,8) f,
        (bes,16 a, bes, c d c d es
        f8) f16 (es d8) c16 (bes,
        c8) c (d d16 c
        bes,8-- bes,-- bes,4--)

        f4->\sf d8.-- (c16
        d16 es d c bes,8.) c16\>
        (d8) d16\!\mf (es f8) es16 (d
        c8) c16 (d c8) f,
        (bes,4) bes,8.-- (c16
        d8) d16 (es f8) es16 (d
        c8) c (d c)
        bes,8-. (bes,-. bes,4--)
    }
    \layout {
        indent = #0
    }
    \header {
        piece = "Appalacian Spring"
    }
}



\version "2.15.39"  % necessary for upgrading to future LilyPond versions.
