\header {
    title      = "IX"
    subtitle   = "Nimrod"
    composer   = "Edward Elgar"
    instrument = "Bass Clarinet"
    copyright  = #(strftime "transcribed from bassoon II by Rey Abolofia, %h %Y" (localtime (current-time)))
    tagline    = ##f
}

\layout {
    indent = #0
    ragged-last = ##f
}

\paper {
    system-system-spacing =
        #'((basic-distance . 12)
           (minimum-distance . 8)
           (padding . 7)
           (stretchability . 60))
}

smallC   = \tweak font-size -2.5 c
smallBes = \tweak font-size -2.5 bes,

\score {
    \transpose bes c'' {
        \clef treble
        \key es \major
        \time 3/4
        \compressEmptyMeasures
        \override DynamicTextSpanner.style = #'none
        \set Score.rehearsalMarkFormatter = #format-mark-numbers
        \autoBreaksOff
        \autoLineBreaksOff

        \tempo "Adagio"
        \mark #33

        <<
            { }
            \new CueVoice {
                \transpose c c {
                    g8 ^"vl" (ees aes4 f
                    bes4 f) f8 (aes)
                }
            }
        >>

        R2.*6

        \mark #34

        es,4 \pp (<c, \smallC>2
        g,4) <bes,, \smallBes> (bes,)
        ~bes,4 c2 \<
        (bes,2 \!) <bes,, \smallBes>4 \cresc (
        \break

        es,4) es2
        (d2) (c4
        bes,4) f2 \mf
        (es2 f4)
        (es4 d) es \dim
        (d4 c) d
        (c4 \> bes,2)~
        \mark #35
        bes,4 \! r4 r4
        \break

        R2.*3

        bes2 \p (aes8 _\markup { \italic "cresc. molto" } g)
        f8 (c es2)
        d2 \cresc (c8 bes,)
        aes,8 \mf \< (es, d,4 <bes,, \smallBes>)
        \mark #36
        es,4 \f \< (<c, \smallC>2 ^\markup { \italic "legatissimo" })
        g,4 \> (bes,2) (
        \break

        es4 \!) c2 \<
        (bes,2 \!) bes,4
        (es4) es2 \<
        (d2 \> c4 \!
        bes,4) c' (d')
        es'2 (aes8) r
        c'4 \> (bes \!) r
        \break

        c'4 \cresc (bes) r
        aes4 d (c
        bes,4 \<) c-> (d)
        \mark #37
        es4 \ff \< c2-^ ^\markup { \italic "rit." } \>
        (g,4 \pp) r r
        es,2. \dim \fermata
        ~es,4 \! r \fermata r
        \bar "|."
    }
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
