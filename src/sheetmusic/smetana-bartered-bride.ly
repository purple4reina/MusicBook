\include "common.ly"

\header {
  title      = "The Barterd Bride"
  subtitle   = "Overture"
  composer   = "Bedrich Smetana"
  instrument = "Clarinet in Bb"
}

\markup \vspace #1  % extra space after title

\score {
  \layout {
    indent = #10
    ragged-last = ##t
  }
  \transpose c c' {
    \key f \major
    \time 2/2
    \tempo "Vivacissimo"

    r4 r8 a'8 \ff (c''2->)
    ~c''8 (d'' c''4->) ~c''8 a' (c''4->)
    ~c''8 a' (c'' d'' c'' a' c''4->)
    ~c''8 d'' (c'' \< a' c'' a' c'' \! d'')
    c''8-. \sf a'-. g'-. a'-. g'-. f'-. d'-. f'-.

    \break

    d'8 f' d' \< c' d' c' a c' \!
    a8 \sf c' a \< g a g f g \!
    f4 \sf r r2
    \once \override TextScript.extra-offset = #'(0 . -3)
    \stopStaff s1 ^\markup {
      \fontsize #5 {
        \beam #4 #0 #0.25
        \hspace #-2
        \arrow-head #X #RIGHT ##f
      }
    }
    \startStaff
    <<
      {
        r1 _\markup { \hspace #5 \small "85" }
        \once \markBoxNum \mark 5
        r2 r4 d'8-. \p e'-.
      }
      \new CueVoice {
        a'8 ^\markup "Viol I" c'' c'' c'' \tremolo 4 { c''8 }
        \once \override Stem.stencil = ##f c'2 ^\markup "Corni"
      }
    >>
    f'8-. \< e'-. f'-. g'-. f'-. e'-. d'-. \! e'-.

    \break

    \transpose c c' {
      f8-. \cresc e-. f-. g-. f-. e-. d-. e-.
      f8 e f g f e d e
      f8 e d e \! f e d e
      f8 \< e d e f b, c \! d
      \mark A
      e4 \ff (g) g2 \sf
      ~g4 f2 \sf f4 \sf (~
    }

    \break

    f'4 e') \acciaccatura e'8 g'4. \sf (e'8)
    e'4 \> (d') d'2 \sf
    e'8 \p d' e' f' e' d' c' d'
    e'8 d' c' d' c' b a b
    c'8 b a b a g f g
    a8 g f g f e d f
    e4 \p
  }
}

\markup \vspace #3  % extra space after title

\score {
  \layout {
    ragged-last = ##t
  }
  \transpose c c' {
    \key f \major
    \time 2/2

    \mark B
    r8 a \ff (c'4) \sf ~c'8 (d' c'4) \sf
    ~c'8 a (c' d' c' a c'4) \sf
    ~c'8 d' (c' a c' a c' d')
    c'8-. a-. g-. a-. g'-. f'-. d'-. f'-.
    d'8 f' d' c' d' c' a c'
    a8 c' a g a g f g

    \break

    f8 g a g f e d e
    \once \markBoxNum \mark 16
    f4 \sf r r2
    R1*14 _\markup {
      \fontsize #5 {
        \beam #8 #0 #0.25
        \hspace #-2
        \arrow-head #X #RIGHT ##f
      }
    }
    e'4 ^\markup { "Solo" } _\markup { \dynamic fsf } r r c'8 \< d'
    e' f' e'4 \sf r c'8 d' \<
    e'8 d' e' f' e'4 \sf c'8 d'
    e'8 \< d' e' f' e' d' c' d' \!
    e'4 \sf r r2

    \break

    \stopStaff s1
  }
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
