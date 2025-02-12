\header {
  title      = "Der Gasn Nigun"
  composer   = "Traditional"
  instrument = "Bb instruments"
  copyright  = #(strftime "transcribed by Rey Abolofia, %h %Y" (localtime (current-time)))
  tagline    = ##f
}

\layout {
  indent = #0
  ragged-last = ##f
}

\markup \vspace #2 % extra space after title

\score {
  \transpose bes,, c' {
    \key d \minor
    \time 3/8

    \partial 8 { f8 }
    \mark A

    \repeat volta 2 {
      f16 g ~g8 [g]
      g4 \trill f8
      f16 d ~d4
      ~d8 r f
      f16 g ~g8 [g]
      g8. \trill f16 a [g]

      \break

      f8. c16 a [c]
      f8 r c
      c8. f16 e [f]
      g8. aes16 b [c']
      d'8. es'16 d' [c']
      b8. \trill aes16 g [f]

      \break

      f8. e16 g [e]
      f8. d16 \tuplet 3/2 { es16 [d c] }
      d8. d'16 a [f]

      \alternative {
        \volta 1 { d8 r f }
        \volta 2 { d8. a,16 d [f] }
      }
    }

    \break
    \mark B

    \repeat volta 2 {
      a4.
      ~a8. a16 \tuplet 3/2 { c'16 [b a] }
      gis16 b a4
      ~a8. d16 f [a]
      c'8. b16 \tuplet 3/2 { c'16 [b a] }
      c'8. b16 \tuplet 3/2 { c'16 [b a] }

      \break

      gis16 b a4
      ~a8. a,16 d [f]
      a8. gis16 \tuplet 3/2 { a16 [gis f] }
      a8. gis16 \tuplet 3/2 { a16 [gis f] }
      e16 g! f4
      ~f8. a,16 d [e]

      \break

      f8. e16 \tuplet 3/2 { f [e d] }
      f8. e16 \tuplet 3/2 { f [e d] }

      \alternative {
        \volta 1 { cis16 e d4 ~d8. a,16 d [f] }
        \volta 2 { cis16 e d4 ~d4 }
      }

      \bar "|."
    }
  }
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
