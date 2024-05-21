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
  \transpose bes c''' {
    \key g \minor
    \time 2/4

    \repeat volta 2 {
      fis8. es16 d8 d
      d8 d d4
      fis8 g a bes
      a8 g a4
      fis8. es16 d8 d
      d8 d d4
      fis8 g fis8. es16
      es8 d4.
    }

    \break

    \repeat volta 2 {
      fis4 g
      fis8 a g4
      fis8 g a bes
      a8 g a4
      fis4 g
      fis8 a g4
      fis8 g fis8. es16
      es8 d4.
    }

    \break

    \repeat volta 2 {
      bes2
      a2
      g8. fis16 g8. fis16
      g8 a bes16 a g8
      bes2
      a2
      g8. fis16 g8. fis16
      g8 fis4.
    }

    \break

    \repeat volta 2 {
      fis4 g
      fis8 a g4
      fis8 g a bes
      a8 g a4
      fis4 g
      fis8 a g4
      fis8 g fis8. es16
      es8 d4.
    }
  }
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
