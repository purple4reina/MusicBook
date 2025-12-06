\header {
  title      = "Cavatina Figaro"
  subtitle   = "The Barber of Seville, Act I, no. 2"
  composer   = "Rossini"
  instrument = "Clarinet in Bb"
  copyright  = #(strftime "transcribed by Rey Abolofia, %h %Y" (localtime (current-time)))
  tagline    = ##f
}

\layout {
  indent = #0
  ragged-last = ##f
  \context {
    \Score
    \omit BarNumber
    \override Hairpin.to-barline = ##f
  }
}

\markup \vspace #1  % extra space after title

\score {
  \transpose bes c'' {
    \compressEmptyMeasures
    \clef treble
    \key c \major
    \time 6/8

    \set Score.rehearsalMarkFormatter = #format-mark-box-numbers
    \mark #31

    \acciaccatura d'8 c'16 \p (b c' d') c'8-. g-. g-. g-.
    \acciaccatura d'8 c'16 (b c' d') c'8-. g-. g-. g-.
    c'8-. g-. e'-. c'8-. g-. e'-.
    c'8-. g-. e'-. c'8-. g-. e'-.

    \break

    \acciaccatura e'8 d'16 (cis'd' e') d'8-. g-. g-. g-.
    \acciaccatura e'8 d'16 (cis'd' e') d'8-. g-. g-. g-.
    d'8-. g-. f'-. d'8-. g-. f'-.
    d'8-. g-. f'-. d'8-. g-. f'-.

    \break

    \acciaccatura f'8 e'16 _\markup { \italic "cresc. a poco" } (d' e' f') e'8-. g-. g-. g-.
    \acciaccatura f'8 e'16 (d' e' f') e'8-. g-. g-. g-.
    e'8-. c'-. g'-. e'-. c'-. g'-.
    e'8-. c'-. g'-. e'-. c'-. g'-.

    \break

    \acciaccatura g'8 f'16 (e' f' g') f'8-. g-. g-. g-.
    \acciaccatura g'8 f'16 (e' f' g') f'8-. g-. g-. g-.
    f'8-. d'-. g'-. f'8-. d'-. g'-.
    f'8-. d'-. g'-. f'8-. d'-. g'-.

    \break

    \transpose c c'' {
      \acciaccatura d8 c16 _\markup { \italic "rinf." } (b, c d) c8-. g,-. g,-. g,-.
      \acciaccatura e8 d16 (cis d e) d8-. g,-. g,-. g,-.
      \acciaccatura d8 c16 (b, c d) c8-. g,-. g,-. g,-.
      \acciaccatura e8 d16 (cis d e) d8-. g,-. g,-. g,-.

      \break

      c8-. \f b,-. c-. d-. e-. d-.
      c8-. b,-. c-. d-. e-. d-.
      c8-. b,-. c-. d-. e-. d-.
      c8-. b,-. c-. d-. e-. d-.
      c8-.
    }
  }
}

\markup {
  \override #'(line-width . 50)
  \override #'(baseline-skip . 1.6)
  \general-align #X #-3
  \justify {
    \fontsize #-5
    \italic {
      \smallCaps Rinforzando, 'reinforcing', 'strengthening', or increasing in power. This
      word, or its abbreviations, rinf. or rfz. is used to denote a sudden and
      short-lasting crescendo. It is applied generally to a whole phrase however
      short, and has the same meaning as sforzando, which is only applied to
      single notes.  It is sometimes used in concerted music to give a momentary
      prominence to a subordinate part.
    }
  }
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
