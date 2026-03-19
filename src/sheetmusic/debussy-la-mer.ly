\include "common.ly"

\header {
  title      = "La Mer"
  composer   = "Debussy"
  instrument = "Clarinet I in A"
}

\markup \vspace #1  % extra space after title

\layout {
  indent = #10
  ragged-last = ##t
}

\score {
  \transpose a ais' {
    \key ges \major
    \time 2/2
    \numericTimeSignature
    \markBoxNum

    \set Staff.instrumentName = \markup \bold "in A"

    R1*5
    \new CueVoice {
      \cueClef "alto"
      r2 r8 f, \txtUp "violas" \t{ g, [(gis, aes,)] }
      \repeat percent 2 {
        des8-. f, \t{ g, [(gis, aes,]) } des-. f, \t{ g, [(gis, aes,)] }
      }
      \cueClefUnset
    }
    \mark 43
    r2
    \set Score.proportionalNotationDuration = #(ly:make-moment 1/8)
    <<
      { d'2 \sfz \> \! ~ }
      { s4. s8\p }
    >>
    d'1 \> \! ~

    \break

    \newSpacingSection
    \set Score.proportionalNotationDuration = #(ly:make-moment 1/2)
    d'2 \< d' \sfp
    ~d'1 \p \> <>\!
    R1*5
    r2 ges' \p \>
    (~ges'2 f'! ~)
    \tuplet 3/2 { f'4 \mf \< e'-- ~e'8. f'16 } ges'2-> \sfz \>
    (~ges'2 f'4) \! r
    R1*3

    \break

    g'16 \p \< (a'8. \!) ~a'4-- ~a'2
    (~a'2 \> b') \!
    R1*4
    \mark 44
    R1*4
    \new CueVoice {
      \cueClef "bass"
      r2 des,2 \pp
      ~des, \< \acciaccatura des,8 (ees,2) \>
      ees,1 \pp \> <>\!
      \cueClefUnset
    }
    f!2-- \mf \< \tuplet 3/2 { ges4-- aeses4.-- ges8-- }
    f4 \p r r2
    \bar "||"

    \break

    R1*3 ^\markup { \bold \huge { En LA } }
    \mark 45
  }
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
