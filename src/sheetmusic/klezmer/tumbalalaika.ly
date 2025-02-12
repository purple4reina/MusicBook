\header {
  title      = "Tumbalalaika"
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
  \transpose bes, c' {
    \key d \minor
    \time 3/4

    a2 a4
    a2 a4
    a4 (g f)
    e2.
    g2 g4
    g2 g4
    g4 (f e)
    d2.

    \break

    d4 (f a)
    d'2 d'4
    f'4 (e' d')
    a2 a4
    c'4 (bes g)
    e2 e4
    g4 (f e)
    d2 d4

    \break

    \transpose c c' {
      a4 a a
      a4 a a
      a4 (g f)
      e2 e4
      g4 g g
      g4 g g
      g4 (f e)
      d2
    } a,4

    \break

    d4 (f a)
    d'2 d'4
    f'4 (e' d')
    a2 a4
    c'4 (bes g)
    e2 e4
    g4 (f e)
    d2 d4

    \bar "|."
  }
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
