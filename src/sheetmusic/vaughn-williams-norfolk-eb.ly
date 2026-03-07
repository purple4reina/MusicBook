\include "common.ly"

\header {
  title      = "Norfolk Rhapsody"
  subtitle   = "No. 1 in E minor"
  composer   = "Ralph Vaughan Williams"
  instrument = "Clarinet in Eb"
}

\markup \vspace #15  % extra space after title

\score {
  \layout {
    indent = #130
    ragged-last = ##t
  }
  \transpose es es' {
    \key a \major
    \time 2/4

    \mark L

    \new CueVoice {
      r16 cis'-. ^"flute" dis'-. e'-. fis'-. gis'-. a'-. b'-.
    }

    \break

    \transpose c c' {
      \set subdivideBeams = ##t
      \set beamMinimumSubdivision = #1/8  % requires lilypond 2.25.34
      cis8 \f (dis16 e \tuplet 3/2 { fis16 gis a } b32 \< cis' dis' e'
      \set subdivideBeams = ##f
      fis'4->) \ff cis'8-. \txtDown "marc" b16-. a-.
      b8-. gis-. e-. fis16-. gis-.
      a8 \txtDown "simile" b fis e
      fis4. fis16 gis
      a8 b cis'16 dis' e'8

      \break

      fis'8 gis' fis' e'16 cis'
      b8 e' dis'16 cis' b8
      cis'4. fis16 gis
      a8 b cis'16 dis' e' cis'
      fis'8 gis' fis' e'16 cis'

      \break

      b8 e' dis'16 cis' dis'8
      cis'4. e'16 cis'
      fis'4-> e'8 cis'
      b16 (cis' b gis
    }
    e' fis' \> e' cis'
    b cis' \! b gis e8) \p r

    \break

    R2
    \mark M
  }
}

\version "2.25.34"  % necessary for upgrading to future LilyPond versions.
