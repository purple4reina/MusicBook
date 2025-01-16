\header {
  title      = "Peter and the Wolf"
  composer   = "Sergei Prokofiev"
  instrument = "A Clarinet"
  copyright  = #(strftime "transcribed by Rey Abolofia, %h %Y" (localtime (current-time)))
  tagline    = ##f
}

\layout {
  indent = #0
  ragged-last = ##f
  \context {
    \Score
    \omit BarNumber
  }
}

\paper {
  print-all-headers = ##t
}

\markup \vspace #1  % extra space after title

\score {
  \header {
    title      = ""
    composer   = ""
    instrument = ""
  }

  \transpose a a' {
    \clef treble
    \key des \major
    \numericTimeSignature \time 2/2
    \tempo "Nervoso" 2 = 96

    \set Score.rehearsalMarkFormatter = #format-mark-box-numbers
    \set Score.proportionalNotationDuration = #(ly:make-moment 1/4)

    \markLengthOn
    \textMark \markup \column {
      \line { In a twinkling... }
      \line { up the tree }
    }

    \mark 20
    r2 \fermata r4 g,8-. \f c-.
    e4-. c8-. g,-. fis,4-. g,8-. c-.

    e8-. g-. f4-> (f8) e-. c-. d-.
    r8 es-. ces-. f,-. r fes-. bes,-. g,-.
    r8 ces-. es-. f,-. r bes,-. fes-. g,-.

    \tuplet 3/2 { r8 \f fis,_\markup { \italic "accel" } ([c] }
    \tuplet 3/2 { e8 [g, des] }
    \tuplet 3/2 { f8 [gis, d] }
    \tuplet 3/2 { fis8 [a, es] }

    \tuplet 3/2 { g8 [bes, fes] }
    \tuplet 3/2 { aes8 [b, f] }
    \tuplet 3/2 { a8 [c ges] }
    bes4_\markup { \italic "ten" })

    r4 \grace { es16 \f (ges _\markup { \italic "precipitato" } beses } ces'8-.) [r8 \grace { bes16 (des' fes' } ges'8-.)] r8 r4
    r4 \grace { es16 (ges beses } ces'8-.) [r8 \grace { bes16 (des' fes' } ges'8-.) r8
    \grace { e'16 (g' bes' } c''8-.)] r8
    \grace { bes'16 _\markup { \italic "a tempo" } (des'' fes'' }
    ges''1->)
    \f

    ~(
    ges''8 \p f'' fes'' es'' d'' des'' c'' des''
    fes''8 _\markup { \italic "rit" } es'' d'' des'' c'' ces'' bes' ces''
    ges'1 ~ges'2) r2 \fermata

    \bar "||"
    \mark 21
  }
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
