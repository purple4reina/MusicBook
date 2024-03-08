\header {
    title     = "Hosanna!"
    subtitle  = "Sung as a round, 1 bar offsets, S A T B"
    composer  = "Grant Edwards"
    arranger  = "based on a 13th C. English rota"
    opus      = "(\"Sumer is I-cumen In\")"
    copyright = #(strftime "transcribed by Rey Abolofia, %h %Y" (localtime (current-time)))
    tagline   = ##f
}

\layout {
    indent = #3
    ragged-last = ##f
}

\score {
    \transpose bes c'' {
        \key d \major
        \time 12/8
        \tempo 4. = 100
        \compressEmptyMeasures

        % m1
        d'4^\markup { \bold Bright } -\markup { \dynamic mf } (cis'8) b4 (cis'8) d'4 d'8 cis' (b) a
        fis4. g4 (e8) fis4. r4.
        d4 (fis8) e4 (g8) fis4 fis8 e4 d8
        \break

        % m4
        fis4 (a8) b4 b8 a4. r4.
        d'4. a d' r
        a4 fis8 g4 e8 fis4 a8 g4 fis8
        d4 fis8 e4 cis8 d4. r
        \break

        % m8
        fis4 fis8 e4 g8 a4 a8 b4 cis'8
        d'4 cis'8 b4 cis'8 d'4. r
        \break

        % m10
        a4. (b) a g4 (fis8)
        d4 fis8 g4 (e8) fis4. g4 a8
        fis4 a8 e4 (cis8) d4. r
        R1*12/8*2
        \bar "||"
        \break

        % m15
        d4.^\markup { TACET } -\markup { \dynamic p } e d e4 g8
        a4. (g) a r4 e8
        fis4. e fis r
        d4 (e8) fis4 (g8) a4. g
        \break

        % m19
        fis4 (g8) a4 (g8) fis4. r
        d (\tuplet 2/3 { d8) [d] } d4. (\tuplet 2/3 { d8) [e] }
        \tuplet 2/3 { fis [e] } (e4.) d \tuplet 2/3 { b,8 [d] }
        d2. r4. a8^\markup { TUTTI } -\markup { \dynamic f } (b cis')
        \break

        % m23
        d'4 (cis'8) b4 cis'8 d'4 d'8 cis' (b) a
        fis4. g4 (e8) fis4. r
        d4 (fis8) e4 g8 fis4 fis8 e4 d8
        \break

        % m26
        fis4 (a8) b4 (b8) a4. r
        d' a d' r
        a4 fis8 g4 e8 fis4 a8 g4 fis8
        d4 fis8 e4 cis8 d4. r
        \break

        % m30
        fis4 fis8 e4 g8 a4 a8 b4 cis'8
        d'4 cis'8 b4 cis'8 d'4. r
        a4. (b) a g4 (fis8)
        d4 fis8 g4 (e8) fis4. g4 a8
        \break

        % m34
        fis4 a8 e4 (cis8) d4. r
        d2. d4. r
        \break

        % m36
        a4 (g8 fis4 e8) d4. a
        d2. d4. r
        d, a, d

        % end
        \tuplet 2/3 { r8 [e] }
        \tuplet 2/3 { d [d] } (d4.) (d2.)
        \bar "|."
    }
}


\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
