\header {
  title      = "The Wild Dove"
  composer   = "Antonín Dvořák"
  instrument = "Bass Clarinet in B-flat"
  copyright  = #(strftime "transcribed by Rey Abolofia, %h %Y" (localtime (current-time)))
  tagline    = ##f
}

\layout {
  indent = #0
  ragged-last = ##f
  \context {
    \Score
    \omit BarNumber
    \compressEmptyMeasures
    \clef treble
  }
}

\markup \vspace #1  % extra space after title

\score {
  \transpose bes beses' {
    \time 2/4

    \set Score.rehearsalMarkFormatter = #format-mark-circle-numbers
    \mark #5

    R2*32^\markup { "Allegro ♩ = 120"  }

    g2^\markup { "Solo" } \p (c2 ~c g, c ~c)

    \break

    g,2 (c4^\markup { "Meno mosso" }
    e g2 \< c'4 e' ~e' g' ~g' \>
    e'^\markup { \italic \tiny "poco a poco rit." }
    c' g e2 d4) \p \endcr c~

    \mark #6
    \time 4/4

    c4 r4 r2
  }
}

\markup \vspace #1  % extra space after title

\score {
  \transpose bes a' {
    \time 4/4

    \set Score.rehearsalMarkFormatter = #format-mark-circle-numbers
    \mark #17

    R1*3^\markup { "Andante" }

    aes,8.^\markup { "Solo" } \p \< (bes,16 ces2 bes,4 \!
    \transpose c deses {
      gis,16-> fis,-> e,8-> ~e,2.) \>
    }
    b,8. \! (c16 d2 \cresc c8 b,)

    \break

    f8 (e d16-> \f c-> \< b,8-> ~b,16) a, (gis,8 ~gis,16 b, f e)
    a,1 \fz \> ^\markup { "Poco a poco piu animato, ma non troppo" }
    ~a,8 r \! r4 r2
    a,1 \p
    ~a,1
    ~a,8 r r4 r2
    R1

    \break
    \mark #18

    bes,1^^ \fz
    ~bes,1
    bes,1^^ \fp
    ~bes,1
    ~bes,8 r r4 r2
  }
}

\markup \vspace #1  % extra space after title

\score {
  \transpose bes beses' {
    \set Score.rehearsalMarkFormatter = #format-mark-circle-numbers

    R1*2
    R1 \fermata
    R1*7^\markup { "Piu lento" }

    d'2 \pp (b
    a2 es
    d2 c)
    e,!2. r4

    R1

    e,2. \ppp r4

    R1*5
    R1 \fermata

    \bar "|."
  }
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
