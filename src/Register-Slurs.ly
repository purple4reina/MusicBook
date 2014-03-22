%%% REGISTER SLURS FOR KUMI %%%


\header{
    title = "Long Tone Warmup"
}


\score {
    \transpose c c {
        \override Staff.TimeSignature #'stencil = ##f 
        \time 3/2
        \key c \major
        e2 _(b') r \bar ""
        f2 _(c'') r \bar ""
        fis2 _(cis'') r \bar ""
        g2 _(d'') r \bar ""
        gis2 _(dis'') r \bar ""
        a2 _(e'') r \bar ""
        ais2 _(f'') r \bar ""
        b2 _(fis'') r \bar ""
        c'2 _(g'') r \bar ""
        cis'2 _(gis'') r \bar ""
        d'2 _(a'') r \bar ""
        dis'2 _(ais'') r \bar ""
        e'2 _(b'') r \bar ""
        f'2 _(c''') r \bar ""

        \bar "||"
    }
    \header {
        piece = "Register Slurs"
    }
    \layout {
        \context {
            \Score
            \remove "Bar_number_engraver"
        }
    }
}

\score {
    \transpose c c' {
        \key c \major
        c2 d4 e
        f4 g a b
        c'2 d'4 e'
        f'4 g' a' b'
        c''2 b'4 a'
        g'4 f' e' d'
        c'2 b4 a
        g4 f e d
        c1
        \bar "||"
    }
    \header {
        piece = "C Major Scale"
    }
}


\version "2.15.39"  % necessary for upgrading to future LilyPond versions.
