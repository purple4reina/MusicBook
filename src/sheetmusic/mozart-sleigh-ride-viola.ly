\header {
  title      = "3 Deutsche Tanze"
  subtitle   = "K.V. 605"
  composer   = "W.A. Mozart"
  instrument = "Viola"
  copyright  = #(strftime "transcribed by Rey Abolofia, %h %Y" (localtime (current-time)))
  tagline    = ##f
}

\layout {
  ragged-last = ##f
}

\markup \vspace #1  % extra space after title

\score {
  \transpose c c' {
    \compressEmptyMeasures
    \clef alto
    \key c \major
    \time 3/4

    ^\markup { \bold "No. 3" }

    \repeat volta 2 {
      c'4-. g-. r
      g4-. e-. r
      g4 e8 e e e
      e4 c c'
      g2 \sf c'4
      g2 \sf c'4
      g4 \sf g g
      c'4 g c
    }

    \break

    \repeat volta 2 {
      g4 fis d
      g4 r r
      g4 fis d
      g4 r c'
      g2 \sf c'4
      g2 \sf c'4
      g4 \sf g g
      c'4 g c
    }
  }
}

\score {
  \transpose c c' {
    \compressEmptyMeasures
    \clef alto
    \key f \major
    \time 3/4

    \set Score.currentBarNumber = #17

    ^\markup { "Die Schlittenfahrt" }
    ^\markup { \bold "Trio" }

    \repeat volta 2 {
      f4 \p r r
      c4 r r
      c4 r r
      f4 r r
      f4 r r
      c4 r r
      c4 r r
      f4 c f,
    }

    \break

    \repeat volta 2 {
      f4 \f r r
      f4 r r
      f4 r r
      f4 r r
      c4 r r
      f4 r r
      c4 r r
      f4 c f,
      _\markup { "Da capo" }
    }
  }
}

\score {
  \transpose c c' {
    \compressEmptyMeasures
    \clef alto
    \key c \major
    \time 3/4

    \set Score.currentBarNumber = #33

    ^\markup { \bold "Coda" }

    {
      c4 r r8 \tuplet 3/2 { g,16 (a, b,) }
      c4 c c
      c4 r r8 \tuplet 3/2 { g,16 (a, b,) }
      c4 c c
      c4 r r8 \tuplet 3/2 { g,16 (a, b,) }
      c4 c c
      c4 c' g

      \break

      e4 c e
      g4 r g8 g
      g4 g8 g g g
      g4 r g8 g
      g4 g8 g g g
      g4 r g8 g
      g8 g g g g g
      g8 g g g g g

      \break

      g8 g g g g g
      g,4 r r
      R2.*3
      c4 \p r r
      g4 r r
      g4 r r
      c'4 r r
      c'4 r r
      g4 r r

      \break

      g4 r r
      c4 r r
      c'4 r r
      c4 r r
      c'4 r r
      c4 r r
      g4 \f g g
      c'4 c' c'
      g4 g g
      c4 r r

      \break

      c'4 \p r r
      c4 r r
      c'4 r r
      c4 r r
      g4 \f g g
      c'4 c' c'
      g4 g g
      c4 r r
      r4 r g
      c4 r r

      \break

      r4 r g
      c4 r r
      c4 r r
      c4 r r
      c4 c c
      c4 r r
      R2.*3
    }

    \bar "|."
  }
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
