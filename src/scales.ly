\header{
    title = "Clarinet Scales"
    tagline = "Reina B Abolofia -- 503.515.9787 -- purple4reina@gmail.com"
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
        c'16 d e f g a b c d e f g a b c d e f e d c b a g f e d c b a g f e d
        c b a g f e f g a b c4
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
        f16 g a bes c d e f g a bes c d e f g a bes c d e f e d c bes a g f e
        d c bes a g f e d c bes a g f e f4
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
        g16 a b c d e fis g a b c d e fis g a b c d e fis g fis e d c b a g fis
        e d c b a g fis e d c b a g fis g4
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
        bes16 c d es f g a bes c d es f g a bes c d es f g f es d c bes a g f
        es d c bes a g f es d c bes a g f g a bes4
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
        d'16 e fis g a b cis d e fis g a b cis d e fis e d cis b a g fis e d cis
        b a g fis e d cis b a g fis e fis g a b cis d4
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
        es'16 f g aes bes c d es f g aes bes c d es f es d c bes aes g f es d c
        bes aes g f es d c bes aes g f g aes bes c d es f es4
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
        a16 b cis d e fis gis a b cis d e fis gis a b cis d e fis e d cis b a
        gis fis e d cis b a gis fis e d cis b a gis fis e fis gis a4
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
        aes16 bes c des es f g aes bes c des es f g aes bes c des es f es des c
        bes aes g f es des c bes aes g f es des c bes aes g f g aes bes aes4
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
        e16 fis gis a b cis dis e fis gis a b cis dis e fis gis a b cis dis e
        fis e dis cis b a gis fis e dis cis b a gis fis e dis cis b a gis fis
        e4
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
        \time 3/4
        e16 f fis g gis a ais b c cis d dis
        e   f fis g gis a ais b c cis d dis
        e   f fis g gis a ais b c cis d dis
        \break
        e16 es d des c b bes a as g ges f
        e   es d des c b bes a as g ges f
        e   es d des c b bes a as g ges f
        e2.
        \bar "||"
        \break
    }
}



\version "2.16.2"  % necessary for upgrading to future LilyPond versions.
