\include "common.ly"

\header {
  title      = #f
  composer   = #f
  instrument = #f
}

\layout {
  \context {
    \Staff
    \omit TimeSignature
  }
  \context {
    \Score
    \omit BarNumber
  }
}

\markup \vspace #1  % extra space after title

\score {
  \transpose c c' {
    \key c \major
    \time 2/4

    \markCirNum

    fis''8-.-> r r4
    a''8-.-> b16-.-> a-> ~a cis'-.-> g8-.->
    \mark 50
    \transpose c c' {
      es'16-> \ff (e'-.) g8 (c'16-.) c'8.->
      \break

      es'16-> (es'-.) g8 (bes16-.) bes8.->
      g16 (a) es8-- e32 (g c' e' g'16-.) r16
    }
    bes,8-. d'16 (e' g'-.) g'8-- r16
    \break

    \transpose c c' {
      g'32-> (f' e' d' e'8-.) f'32-> (es' des' ces' des'8-.)
      \mark 55 e'!32-> (d'! c'! bes c'8-.) dis'32-. (cis' b a b8-.)
      d'!32 (c'! bes a bes8 ~bes4 ~
      \break

      bes4) } r16 c8-> \mf e16-.
    d8-> [c-> bes,-> a,->]
    bes,2-> ~
    \mark 60 bes,4. r8 \caesura
    \break

    a,32 \f ([bes, c d] es _\markup { \italic "dim." } [f g a] bes [c' d' es'] f' [g' a' bes']
    c''8-.) \p [r c'''-.->] \ff r
      ^\markup {
        \italic {
          \column {
            \line { "To" \bold "A" }
            \line { "CLARINET" }
          }
        }
      }
    \bar "|."
  }
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
