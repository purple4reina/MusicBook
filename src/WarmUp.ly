

\header{
    title = "Clarinet Warm Ups"
    tagline = "Reina B Abolofia -- 503.515.9787 -- purple4reina@gmail.com"
}

%%% LONG TONES %%%
\score {

    \header {
        piece = "Long Tones"
    }
    \layout {
        indent = #0
        \context {
            \Score
            \override BarNumber.break-visibility = ##(#f #f #f)
        }
    }

    \transpose c c {
        \tempo 4 = 60
        e1 (f fis g) r
        gis (a ais b) r
        c' (cis' d' dis') r
        e' (f' fis' g') r
        gis' (a' ais' b') r
        c'' (cis'' d'' dis'') r
        e'' (f'' fis'' g'') r
        gis'' (a'' ais'' b'')
        \bar "||"
    }
}


%%% REGISTER SLURS %%%
\score {

    \header {
        piece = "Register Slurs"
    }
    \layout {
        indent = #0
        \context {
            \Score
            \override BarNumber.break-visibility = ##(#f #f #f)
        }
    }

    \transpose c c {
        \override Stem.length = #0  % remove stems
        \override Score.TimeSignature.stencil = ##f  % remove timesig

        \time 16/4

        e4 (b e' b' e'' b'' e''' b'' e'' b' e' b e1)
        f4 (c' f' c'' f'' c''' f''' c''' f'' c'' f' c' f1)
        fis4 (cis' fis' cis'' fis'' cis''' fis''' cis''' fis'' cis'' fis' cis' fis1)
        g4 (d' g' d'' g'' d''' g''' d''' g'' d'' g' d' g1)
        aes4 (ees' aes' ees'' aes'' ees''' aes''' ees''' aes'' ees'' aes' ees' aes1)
        a4 (e' a' e'' a'' e''' a''' e''' a'' e'' a' e' a1)

    }
}


%%% ARTICULATION %%%
\score {

    \header {
        piece = "Articulation"
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
        piece = "Articulation"
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
        \repeat unfold 16 { f,16-. }
        f, (g, a, bes, c d e f) f (e d c bes, a, g, f,)
        \repeat unfold 16 { g,-. }
        g, (a, b, c d e fis g) g (fis e d c b, a, g,)
        \repeat unfold 16 { a,-. }
        a, (b, cis d e fis gis a) a (gis fis e d cis b, a,) a,4--
        \bar "||"
    }
}



\version "2.16.2"  % necessary for upgrading to future LilyPond versions.
