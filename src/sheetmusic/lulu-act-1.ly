\include "common.ly"

\header {
  title      = "Lulu - Act I"
  composer   = "Alban Berg"
  instrument = "Clarinet in Bb"
}

\markup \vspace #1  % extra space after title

\score {
  \layout {
    ragged-last = ##t
    \context {
      \Score
      \omit BarNumber
    }
  }
  \transpose c c' {
    \markBoxNum

    \key c \major
    \time 4/8

    \mark 1245
    \override TextSpanner.bound-details.left.text = "rit."
    r8 r16 f'32 \mf (es' f'16-.) g'-. \startTextSpan aes'-. bes'-.
    \set subdivideBeams = ##t
    {
      \tuplet 3/2 { c''16-. \f \< [e' (cis' }
      b16 \txtDown "espr." \> ais]
      ~ais \! b,8-.) \> ais!16 \p \((
    }
    \tempo "Tranquillo" 8 = 80
    \tuplet 3/2 { b,16) \txtDown "dolce" \stopTextSpan [ais b,] } ais16 b, ais [b,] \tuplet 3/2 { ais16 b, ais }

    \break

    \numericTimeSignature \time 4/4
    \tempo "Tempo I (Allegro energico)" 4 = 80
    b,2~ \tuplet 3/2 { b,4 c8 \) } r4
    \set subdivideBeams = ##f
    r4 r8 cis16 \f (b, bes, e,-.) a,-. c-. g4~
    \mark 1250
    g8 d--) bes,-- a-- (es c) r f' (

    \break

    es'8 bes) r b (~b4 c'
    des'8) r r4 r2
  }
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
