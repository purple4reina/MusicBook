\header {
  title      = "Bulgarski Zhok"
  subtitle   = "(Moldavian Hora)"
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
  \transpose bes g'' {
    \key f \major
    \time 3/8

    \repeat volta 2 {
      d'8 \prall a4
      d'8 \prall a4
      g8 \prall f4
      e8 \prall d4
      g8 f4
      g4 a8
      gis8 a a
      gis8. \trill f16 e d

      \break

      d'8 \prall a4
      d'8 \prall a4
      g8 \prall f4
      e8 \prall d4
      g8 f4
      e8. d16 e f
      d4.~
      d4.
    }

    \break

    \repeat volta 2 {
      \tuplet 3/2 { g16 fis g } b4~
      b8. d16 g b
      d'8 c'4~
      c'4 g8
      b4 c'8
      d'4 e'8
      d'4 d'8
      c'8. \trill b16 a g

      \break

      \tuplet 3/2 { g16 fis g } b4~
      b8. d16 g b
      d'8 c'4~
      c'4 g8
      c'4 \tuplet 3/2 { bes?16 a bes }
      c'4 \tuplet 3/2 { bes16 a bes }
      a4.~
      a4.
    }
  }
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
