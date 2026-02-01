\header {
  title      = "Peter and the Wolf"
  subtitle   = "Cat Theme"
  composer   = "Sergei Prokofiev"
  instrument = "Clarinet in B♭"
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

\markup \vspace #2  % extra space after title

\score {
  \transpose bes a'' {
    \compressEmptyMeasures
    \clef treble
    \key es \major

    \partial 4 f,8-. \p ^\markup { \bold Moderato } bes,-. _\markup { \italic "con eleganza" } 
    d4-. bes,8-. f,-. e,4-. f,8-. bes,-.
    d8-. f-. es4-> (es8) d bes, c
    d8 (c) a,-. bes,-. c (bes,) g,-. a,-.
    bes,2-> r4 f,8-. bes,-.

    \break

    d4-. bes,8-. f,-. e,4-. f,8-. bes,-.
    d8-. f-. es4-> (es8) d (f es
    d8) c-> (es) d-> (c) bes,-> (d) c
    a,2-> (bes,4-.) r

    \break

    r2 r4 bes,8-. \f es-.
    g4-. es8-. bes,-. a,4-. bes,8-. es-.
    g8-. bes-. aes4-> (aes8) g es f
    g8 (f) d-. es-. f (es) c-. d-.
    es2-> r4 bes,8-. \f es-.

    \break

    g4-. es8-. bes,-. a,4-. bes,8-. es-.
    g8-. bes-. aes4-> (aes8) g (bes aes
    g8) f-> (aes) g-> (f) es-> (g) f
    d2-> (es8-.) r r4

    \bar "|."
  }
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
