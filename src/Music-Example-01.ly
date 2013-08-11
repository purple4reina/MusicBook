

%%%% MOZART EXAMPLES %%%%


\header {
    title = "Musical Examples"
    subtitle = "Mozart's Clarinet"
}

\markup {
    \column {
        \null
        \null
        \null
        \line { Mozart lived from 1756 to 1791. During his time, the clarinet }
        \line { was a very young instrument. He wrote music that made the clarinet }
        \line { stand out. It is because of him that the clarinet took on as a popular }
        \line { instrument. Some of the best music written for clarinet was written by }
        \line { Mozart. }
        \null
        \null
        \null
    }
}

% clarinet concerto
\score {
    \transpose c c'' {
        \key c \major
        \tempo Allegro
        
        g2 e4. (f8)
        a8 (g) f e e4 r
        f4 (d8) r f4 (d8) r
        c2 (b,4) r
        c2 ~ c16 (b, c b,) d (c b, a,)
        g,8 (f) f2 (e4)
        d16 (e f g gis a f d) c4 (e8 d)
        c4 r r2
        c1 ~
        c16 (d e f g a b c') b (c' b c' b c' b c')
        gis16 (a gis a e f e f) cis (d e f fis g gis a)
        c4. (d16 c b,4) r
        g16 f d b, g, f, d, b,, g,,2
        f,,2 b
        (c'8) e-. (f-. fis-. g-.) b,-. (c-. cis-.)
        d2. (e8 f)
        e16 c' g e c g, e, c, a,, c, f, a, c f a c'
        fis16 (g a g f e d c) d2 \trill \acciaccatura { c16 [d] }
        c4
    }
    \layout {
        indent = #0
    }
    \header {
        piece = "Mozart Clarinet Concerto"
    }
}

\markup {
    \column {
        \null
        \null
        \null
        \line { One of my favorite effects that Mozart uses is the alberti bass. }
        \null
        \null
    }
}

% alberti from end of expo
\score {
    \transpose c c' {
        \repeat unfold 3 {
            g,16 d b, d
            a,16 d c d
            g,16 d b, d
            fis,16 d a, d
        }
        g,16 d b, d
        fis,16 d a, d
        g,16 d b, d
        fis,16 d a, d
        g,16
    }
    \layout {
        indent = #0
    }
}

\version "2.16.2"
