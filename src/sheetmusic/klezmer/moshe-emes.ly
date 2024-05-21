\header {
  title      = "Moshe Emes"
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
  \transpose e d'' {
    \key b \minor
    \time 2/4

    ais8. g16 fis8 fis
    \acciaccatura e8 fis8 fis fis4
    ais16 g ais b cis' d' cis' b
    cis'16 d' cis' b cis'4
    ais8. g16 fis8 fis
    \acciaccatura e8 fis8 fis fis4
    ais8 b ais g
    ais8 ais4 r8
    \bar "||"

    \break

    ais8. g16 fis8 fis
    cis'8 fis fis fis
    ais8 b cis'16 e' d'8
    \tuplet 3/2 {cis'16 b cis'} b8 cis'4
    ais8. g16 fis8 fis
    \acciaccatura e8 fis8 fis fis4
    ais16 cis' b8 \tuplet 3/2 {ais16 b ais} g8
    g8 fis4 r8

    \break

    \repeat volta 2 {
      ais4 b
      ais8 cis' b \tuplet 3/2 {d'16 cis' b}
      ais8 b cis' d'
      \tuplet 3/2 {cis'16 d' cis'} b8 cis'4
      ais16 fis ais cis' b ais b cis'
      ais8 cis' b \tuplet 3/2 {d'16 cis' b}

      \alternative {
        \volta 1 {
          ais8 g b4
          b8 ais4 r8
        }
        \volta 2 {
          ais8 g b ais
          g8 fis4 r8
        }
      }
    }

    \break

    \repeat volta 2 {
      d'2
      cis'2
      \tuplet 3/2 {b16 cis' b} ais8 \tuplet 3/2 {b16 cis' b} ais8
      b16 ais b cis' d' cis' b8
      d'4 fis16 b cis' d'
      cis'2
      \grace {b16 cis'} b8 ais b cis'
      b8 ais4 r8
    }

    \break

    \repeat volta 2 {
      ais4 b
      ais8 cis' b \tuplet 3/2 {d'16 cis' b}
      ais8 b cis' d'
      \tuplet 3/2 {cis'16 d' cis'} b8 cis'4
      ais16 fis ais cis' b ais b cis'
      ais8 cis' b \tuplet 3/2 {d'16 cis' b}

      \alternative {
        \volta 1 {
          ais8 g b4
          b8 ais4 r8
        }
        \volta 2 {
          ais8 g b ais
          g8 fis4 r8
        }
      }
    }
  }
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
