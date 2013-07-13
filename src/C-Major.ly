
%%% C MAJOR FOR SOREN  %%%%


\header{
    title = "C Major"
}

\score {
    \transpose c c' {
        g1 r
        f1 r
        a1 r
        e1 r
        b1 r
        d1 r
        c'1 r
        c1
        \bar "|."
    }
    \header {
        piece = "Embouchure"
    }
}

\score {
    \transpose c c' {
        c4 (d8 e f g a b
        c'4 b8 a g f e d) 
        c4 (e g c') g (e c g, c1)
        \bar "|."
    }
    \header {
        piece = "Connection"
    }
}

\score {
    \transpose c c' {
        c8 e d f e g f a g b a c' b d' c' a b g a f g e f d e c d b, c2
        \bar "|."
    }
    \header {
        piece = "Technique"
    }
}

\score {
    \transpose c c' {
        c4. (e8 g4. f8
        e8 f) d-. e-.
        c4. (e8 a4. g8
        f8 g) e-. f-.
        d4. (f8 b4. a8
        g8 a) f-. g-.
        e4. (g8 c'4. a8
        g8 e) f-. d-.
        c1
        \bar "|."
    }
    \header {
        piece = "Etude"
    }
}

\pageBreak

\score {
    \transpose c c'' {
        c8 (e d e c d c e)
        d (f e f d e d f)
        e (g f g e f e g)
        f (a g a f g f a)
        g (b a b g a g b)
        c' (g e g c2)
        \bar "|."
    }
    \header {
        piece = "Clarion Register"
    }
}

\score {
    \transpose c c' {
        c'8 (b a b c' b a c')
        b (a g a b a g b)
        a (g f g a g f a)
        g (b c' d' e' c' a g)
        c1
        \bar "|."
    }
    \header {
        piece = "Pushing Air"
    }
}

\score {
    \transpose f c' {
        f8 (c') c'-. c'-.
        d' (c') c'-. c'-.
        g (c') c'-. c'-.
        d' (c') c'-. c'-.
        a (c') c'-. f'-.
        f' (e') e'-. f'-.
        g' (f') e'-. d'-.
        c'2
        \bar "|."
    }
    \header {
        piece = "Articulation"
    }
}



\version "2.15.39"  % necessary for upgrading to future LilyPond versions.
