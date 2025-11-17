\header{
    title = "Clarinet Scales"
    tagline = "Rey Abolofia -- 503.515.9787 -- purple4reina@gmail.com -- v1.0.0"
}

\paper {
    page-count = 1
}

% C MAJOR
\score {
    \header {
        piece = "C Major"
    }
    \layout {
        indent = #0
        ragged-last = ##f
    }
    \relative {
        \key c \major
        c'2 d4 e f g a b c2 b4 a g f e d c1
        \bar "||"
        \break
    }
}

% F MAJOR
\score {
    \header {
        piece = "F Major"
    }
    \layout {
        indent = #0
        ragged-last = ##f
    }
    \relative {
        \key f \major
        f2 g4 a bes c d e f2 e4 d c bes a g f1
        \bar "||"
        \break
    }
}

% G MAJOR
\score {
    \header {
        piece = "G Major"
    }
    \layout {
        indent = #0
        ragged-last = ##f
    }
    \relative {
        \key g \major
        g2 a4 b c d e fis g2 fis4 e d c b a g1
        \bar "||"
        \break
    }
}


% B-FLAT MAJOR
\score {
    \header {
        piece = "B-flat Major"
    }
    \layout {
        indent = #0
        ragged-last = ##f
    }
    \relative {
        \key bes \major
        bes2 c4 d es f g a bes2 a4 g f es d c bes1
        \bar "||"
        \break
    }
}


% D MAJOR
\score {
    \header {
        piece = "D Major"
    }
    \layout {
        indent = #0
        ragged-last = ##f
    }
    \relative {
        \key d \major
        d'2 e4 fis g a b cis d2 cis4 b a g fis e d1
        \bar "||"
        \break
    }
}


% E-FLAT MAJOR
\score {
    \header {
        piece = "E-flat Major"
    }
    \layout {
        indent = #0
        ragged-last = ##f
    }
    \relative {
        \key es \major
        es'2 f4 g aes bes c d es2 d4 c bes aes g f es1
        \bar "||"
        \break
    }
}


% A MAJOR
\score {
    \header {
        piece = "A Major"
    }
    \layout {
        indent = #0
        ragged-last = ##f
    }
    \relative {
        \key a \major
        a2 b4 cis d e fis gis a2 gis4 fis e d cis b a1
        \bar "||"
        \break
    }
}


% A-FLAT MAJOR
\score {
    \header {
        piece = "A-flat Major"
    }
    \layout {
        indent = #0
        ragged-last = ##f
    }
    \relative {
        \key aes \major
        aes2 bes4 c des es f g aes2 g4 f es des c bes aes1
        \bar "||"
        \break
    }
}


% E MAJOR
\score {
    \header {
        piece = "E Major"
    }
    \layout {
        indent = #0
        ragged-last = ##f
    }
    \relative {
        \key e \major
        e2 fis4 gis a b cis dis e2 dis4 cis b a gis fis e1
        \bar "||"
        \break
    }
}

% CHROMATIC
\score {
    \header {
        piece = "Chromatic"
    }
    \layout {
        indent = #0
        ragged-last = ##f
        \context {
            \Score
            \override NonMusicalPaperColumn.line-break-permission = ##f
            \override BarNumber.break-visibility = ##(#f #f #f)
        }
    }
    \relative {
        e8 f fis g gis a ais b c cis d dis e f fis g gis a ais b c cis d dis
        \break
        e8 es d des c b bes a as g ges f e es d des c b bes a as g ges f e1
        \bar "||"
        \break
    }
}



\version "2.16.2"  % necessary for upgrading to future LilyPond versions.
