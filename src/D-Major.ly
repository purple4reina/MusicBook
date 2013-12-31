
%%% C MAJOR FOR SOREN  %%%%


\header{
    title = "D Major"
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
        e,1 (f, fis, g,)
        r1
        c1 (cis d dis)
        r1
        e1 (f fis g)
        r1
        gis1 (a ais b)
        \bar "|."
    }
    \header {
        piece = "Long Tones"
    }
}

%scale full range
\score {
    \transpose c d' {
        \key c \major
        c8 (d e f g a b c'
        d'8 e' f' g' a' g'
        f'8 e' d' c' b a g f
        e d c b, a, g, f, e, d, e,
        f,8 g, a, b, c2)
        c4 (e g c') g (e c g, c1)
        \bar "|."
    }
    \header {
        piece = "Scale"
    }
}

%scale in thirds
\score {
    \transpose c d' {
        \key c \major
        c8 (e d f e g f a g b a c' b d' c' a b g a f g e f d e c d b, c2)
        \bar "|."
    }
    \header {
        piece = "Scale in Thirds"
    }
}

% articulation
\score {
    \transpose f d' {
        \key f \major
        \repeat unfold 4 {f4-.}
        \repeat unfold 8 {f8-.}
        \repeat unfold 16 {f16-.}
        \repeat unfold 1 {f1}
        \bar "|."
    }
    \header {
        piece = "Articulation"
    }
}


\version "2.15.39"  % necessary for upgrading to future LilyPond versions.
