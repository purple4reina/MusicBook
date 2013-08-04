

%%% F MAJOR FOR SOREN  %%%%


\header{
    title = "F Major"
}

% longtones
\score {
    \transpose c f' {
        \key c \major
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

% scale and arpeggio
\score {
    \transpose c f' {
        \key c \major
        c4 (d8 e f g a b
        c'4 b8 a g f e d) 
        c4 (e g c') g (e c g, c1)
        \bar "|."
    }
    \header {
        piece = "Connection"
    }
}

% scale in thirds
\score {
    \transpose c f' {
        \key c \major
        c8 e d f e g f a g b a c' b d' c' a b g a f g e f d e c d b, c2
        \bar "|."
    }
    \header {
        piece = "Technique"
    }
}

% articulation
\score {
    \transpose f f {
        \key f \major
        \repeat unfold 2 {f2-.}
        \repeat unfold 4 {f4-.}
        \repeat unfold 8 {f8-.}
        \repeat unfold 1 {f1}
        
        \bar "||"

        f'8 (g') e'-. e'-.
        d'8-. d'-. d'-. d'-.
        f'8 (a') bes'-. bes'-.
        c''8-. c''-. c''-. c''-.
        f'8 (g') e'-. d'-.
        c'8-. f'-. a'-. c''-.
        f''1

        \bar "|."
    }
    \header {
        piece = "Articulation"
    }
}

\version "2.15.39"  % necessary for upgrading to future LilyPond versions.
