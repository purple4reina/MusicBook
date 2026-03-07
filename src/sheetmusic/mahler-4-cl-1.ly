\include "common.ly"

\header {
  title      = "Symphony No. 4 in G Major"
  composer   = "Gustav Mahler"
  instrument = "Clarinet 1"
}

\layout {
  ragged-last = ##t
  \context {
    \Score
    \omit BarNumber
  }
}

\markup \vspace #30  % extra space after title

\score {
  \layout {
    indent = #90
  }
  \transpose bes c'' {
    \key a \major
    \time 4/4
    \markNum
    \set Staff.instrumentName = \markup \bold "                                                               In Bb"
    \override Score.SpacingSpanner.spacing-increment = 0.25
    \override Hairpin.to-barline = ##f

    \mark 10
    R1*17
    \mark 11
    R1*2
    r2 r4 r8. \tuplet 3/2 { cis'32 \f (e' gis' }

    \break

    cis''4->) cis''-> cis''2-> \>
    ~cis''1 \p
    ~cis''2.. \tuplet 3/2 { cis'16 \mf (e' a' }
    cis''8.) [b'16 a'8. \txtDown "dim" gis'16] fis'8. [e'16 dis'8. cis'16]
    bis8. cis'16 dis'2.
    ~dis'8 r r4 r r8 \tuplet 3/2 { e'16 \f (g' c'' }
    e''8.) [d''16 c''8. b'16] a'8. \txtDown "dim" [g'16 fis'8. e'16]

    \break

    dis'8. e'16 fis'2.
    ~fis'8 r r4 r2
    R1
    \bar "||"
    \mark 12
  }
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
