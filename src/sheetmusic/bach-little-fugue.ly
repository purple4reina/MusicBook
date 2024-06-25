\header {
  title      = "Little Fugue in G minor"
  subtitle   = "excerpts"
  composer   = "JS Bach"
  arranger   = "prepared by Rey Abolofia"
  tagline    = ##f
}

\layout {
  indent = #0
  ragged-last = ##f
}

\markup \vspace #2 % extra space after title

\score {
  \transpose bes c'' {
    \key d \minor
    \time 4/4

    g4 ^\markup { "Subject" } d' bes4. a8
    g8 bes a g fis a d4
    g8 d a d bes a16 g a8 d
    g8 d16 g a8 d16 a bes8 a16 g a16 d d' c'
    bes16 a g bes a g fis a g4 r
    \bar "|."

    \break

    \partial 4. { a8 ^\markup { "Counter Subject" }  d' e' }
    f'16 g' f' g' g'8. \trill f'32 g' a'16 g' a' bes' a' g' f' e'
    f'16 a' g' a' cis' a' g' a' d' a' g' a' cis' a' g' a'
    f'16 d' cis' d' g' d' cis' d' a' d' cis' d' g' d' cis' d'
    a8 f' g e' f'4 r
    \bar "|."

    \break

    f16 ^\markup { "Sequence" } es f g f es d f es d es f es d c es
    d16 c d es d c bes, d c bes, c d c bes, a, c
    \bar "|."
  }
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
