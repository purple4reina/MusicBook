

%%%% B-flat MAJOR FOR SOREN  %%%%


\header {
    title = "B-flat Major"
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

% longtones
\score {
    \transpose c bes' {
        \key c \major
        \tempo 8 = 92
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
        piece = "Long Tones"
    }
}

% scale and arpeggio
\score {
    \transpose c bes {
        \key c \major
        c2 (d4 e f g a b
        c'2 b4 a g f e d)
        c2 (e g c') g (e c g, c1)
        \bar "|."
    }
    \header {
        piece = "Scale"
    }
}

% articulation
\score {
    \transpose f bes {
        \key f \major
        \repeat unfold 2 {f2-.}
        \repeat unfold 4 {f4-.}
        \repeat unfold 8 {f8-.}
        \repeat unfold 1 {f1}
        \bar "|."
    }
    \header {
        piece = "Articulation"
    }
}

% etude
\score {
    \new StaffGroup <<
        \new Staff
        \transpose bes bes' {
            \key bes \major
            \time 3/4
            bes,4 c d
            es4 c c
            es2.
            f4 bes f
            f2.
            bes4 c' d'
            es'4 c'2
            es'2.
            f'4 bes' f'
            bes,2.
            \bar "|."
        }
        \new Staff
        \transpose bes bes' {
            \key bes \major
            \time 3/4
            \times 2/3 { bes,8 (c d) }
            \times 2/3 { c8 (d es) }
            \times 2/3 { d8 (es f) }
            \times 2/3 { es8 (g es) }
            \times 2/3 { c8 (bes, g,) }
            \times 2/3 { c8 (bes, g,) }
            c2.
            \times 2/3 { d8 d d }
            \times 2/3 { d8 d d }
            \times 2/3 { d8 d d }
            a,2.
            \times 2/3 { bes,8 (c d) }
            \times 2/3 { c8 (d es) }
            \times 2/3 { d8 (es f) }
            \times 2/3 { es8 (g es) }
            \times 2/3 { c8 (bes, g,) }
            \times 2/3 { c8 (bes, g,) }
            c2.
            \times 2/3 { d8 d d }
            \times 2/3 { d8 d d }
            \times 2/3 { d8 d d }
            d2.
        }
    >>
    \header {
        piece = "Etude Duet"
    }
}


\version "2.15.39"  % necessary for upgrading to future LilyPond versions.
