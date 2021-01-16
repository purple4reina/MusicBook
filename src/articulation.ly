

\header{
    title = "Clarinet Articulation"
    tagline = "Rey Abolofia -- 503.515.9787 -- purple4reina@gmail.com -- v1.1.0"
}


\score {
    \header {
        piece = "Slow"
    }
    \layout {
        indent = #0
        ragged-last = ##f
        \context {
            \Score
            \override BarNumber.break-visibility = ##(#f #f #f)
        }
    }
    \transpose c c' {
        \tempo 4 = 90

        g2. r4
        g2. r4
        g2. r4
        g2. r4
        \bar "||"
        \break

        g2. r4
        g2. r4
        g16-. r8. g16-. r8. g16-. r8. g16-. r8.
        g16-. r8. g16-. r8. g16-. r8. g16-. r8.
        g2. r4
        \bar "||"
    }
}

\score {
    \header {
        piece = "Repeated"
    }
    \layout {
        indent = #0
        ragged-last = ##f
        \context {
            \Score
            \override BarNumber.break-visibility = ##(#f #f #f)
        }
    }
    \transpose c c' {
        \key f \major
        \repeat unfold 16 { f,16-. }
        f, (g, a, bes, c d e f) f (e d c bes, a, g, f,)
        \repeat unfold 16 { g,-. }
        g, (a, bes, c d e f g) g (f e d c bes, a, g,)
        \repeat unfold 16 { a,-. }
        a, (bes, c d e f g a) a (g f e d c bes, a,) a,4--
        \bar "||"
    }
}

\score {
    \header {
        piece = "Moving"
    }
    \layout {
        indent = #0
        ragged-last = ##f
        \context {
            \Score
            \override BarNumber.break-visibility = ##(#f #f #f)
        }
    }
    \transpose c c' {
        \key f \major
        \repeat unfold 16 { f,16-. }
        f, (g, a, bes, c d e f) f (e d c bes, a, g, f,)
        \repeat unfold 16 { f,16-. }
        f,-. g,-. a,-. bes,-. c-. d-. e-. f-.
        f-. e-. d-. c-. bes,-. a,-. g,-.  f,-.
        f,1
        \bar "||"
    }
}


\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
