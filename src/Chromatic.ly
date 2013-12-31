
%%%% CHROMATIC MAJOR FOR SOREN  %%%%

\header {
    title = "Chromatic Scale"
}

% study tips
\markup {
    \column {
        \null
        \null
        \null
        \line { How to structure your practice time: }
        \line { * Long Tones, Scale, Articulation  [5 minutes]  }
        \line { * Etude                            [5 minutes]  }
        \line { * Solo                             [10 minutes] }
        \line { * Band Music                       [10 minutes] }
        \null
        \null
        \null
    }
}

%long tones
\score {
    \transpose c c' {
        \key c \major
        \tempo 4 = 76
        e,1 (f, fis, g,)
        r1
        gis,1 (a, ais, b,)
        r1
        c1 (cis d dis)
        r1
        e1 (f fis g)
        r1
        gis1 (a ais b)
        r1
        c'1 (cis' d' dis')
        r1
        e'1 (f' fis' g')
        r1
        gis'1 (a' ais' b')
        \bar "|."
    }
    \header {
        piece = "Long Tones"
    }
}

%scale full range
\score {
    \transpose c c' {
        e,8 (f, fis, g, gis, a, ais, b,)
        c (cis d dis e8 f fis g)
        gis (a ais b c' cis' d' dis')
        e'8 (f' fis' g' gis' a' ais' b')
        c'' (b' bes' a' aes' g' ges' f')
        e' (es' d' des' c' b bes a)
        aes (g ges f e es d des)
        c (b, bes, a, aes, g, ges, f,)
        e,1
        \bar "|."
    }
    \header {
        piece = "Chromatic Scale"
    }
}

\version "2.15.39"  % necessary for upgrading to future LilyPond versions.
