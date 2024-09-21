\header {
    title      = "Scheherazade"
    composer   = "Nikolai Rimsky-Korsakov"
    instrument = "Cues"
    copyright  = #(strftime "transcribed by Rey Abolofia, %h %Y" (localtime (current-time)))
    tagline    = ##f
}

\layout {
    indent = #0
    ragged-last = ##f
    \context {
        \Score
        \omit BarNumber
    }
}

\paper {
    print-all-headers = ##t
}

\markup \vspace #1  % extra space after title

\score {
    \header {
        title      = ""
        composer   = ""
        instrument = ""
    }

    \transpose c c'' {
        \clef treble
        \key g \major
        \time 6/4

        r1.
        r1.

        g,2. ^\markup { \italic "cello" } ~g,2 (d,4)
        f,2. r4 f ^\markup { \italic "cl" } (e)
        a4 (g) d e \acciaccatura g8 (f4) (e)
        a4 (g) d e \acciaccatura g8 (f4) (e)
        a1. (g2.) r

        \bar "||"
        \key es \major

        bes,2. ^\markup { \italic "cello" } ~bes,2 (f,4)
        aes,2. r4 aes ^\markup { \italic "ob" } (g)
        c'4 (bes) f g \acciaccatura bes8 (aes4) (g)
        c'4 (bes) f g \acciaccatura bes8 (aes4) (g)
        c'1. (bes2.) r

        d2. ^\markup { \italic "cello" } ~d2 (a,4)
        c2. r4 c' ^\markup { \italic "fl" } (b)
        e'4 (d') a b \acciaccatura d'8 (c'4) (b)
        e'4 (d') a b \acciaccatura d'8 (c'4) (b)
        e'1. (d'2.) r

        \transpose c c, {
          \mark G
          d'4-. ^\markup { \italic "vln" } (\tuplet 3/2 {c'8 [d' c']} \tuplet 3/2 {bes8 [c' bes]})
          \tuplet 3/2 {a8 [(bes a]} \tuplet 3/2 {g [bes d']} \tuplet 3/2 {f'8 [e' d')]}
          d'4-. (\tuplet 3/2 {c'8 [d' c']} \tuplet 3/2 {bes8 [c' bes]})
          \tuplet 3/2 {a8 [(bes a]} \tuplet 3/2 {g [bes d']} \tuplet 3/2 {f'8 [e' d')]}
          d'4-. \tuplet 3/2 {g8 [(bes d']} \tuplet 3/2 {f'8 [e' d')]}
          d'4-. r r
          r4 \tuplet 3/2 {g8 [(bes d']} \tuplet 3/2 {f'8 [e' d')]}
          e'4. (f'8 g'4)

          c'4-. (\tuplet 3/2 {bes8 [c' bes]} \tuplet 3/2 {aes!8 [bes aes]})
          \tuplet 3/2 {g8 [(aes g]} \tuplet 3/2 {f [aes c']} \tuplet 3/2 {es'!8 [d' c'])}
          c'4-. (\tuplet 3/2 {bes8 [c' bes]} \tuplet 3/2 {aes8 [bes aes]})
          \tuplet 3/2 {g8 [(aes g]} \tuplet 3/2 {f [aes c']} \tuplet 3/2 {es'8 [d' c'])}
          c'4-. \tuplet 3/2 {f8 [(aes c']} \tuplet 3/2 {es'8 [d' c'])}
          c'4-. r r
          r4 \tuplet 3/2 {f8 [(aes c']} \tuplet 3/2 {es'8 [d' c'])}
          d'4. (es'8 f'4)
        }

        \mark H
    }
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
