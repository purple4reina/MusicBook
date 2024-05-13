\layout {
  indent = #0
  ragged-last = ##f
  \context { \Score \omit BarNumber }
}

fingering = _\markup \woodwind-diagram #'clarinet #'()
scale = {
  c2 d4 e f g a b c'2 b4 a g f e d c1
  \bar "|."
  \break
}
arpeggio_two = {
  c4 e g c' e' g' c'' g' e' c' g e c1
  \bar "|."
  \break
}
arpeggio_three = {
  c4 e g c' e' g' c'' e'' g'' c''' g'' e'' c'' g' e' c' g e c2
  \bar "|."
  \break
}
chromatic = {
  e4 f fis g gis a ais b c' cis' d' dis' e'
  es'4 d' des' c' b bes a aes g ges f e1
  \bar "|."
  \break
}

\book {
  \paper {
    print-all-headers = ##t
    #(set-paper-size "letter")
    system-system-spacing = #'((basic-distance . 15))
    markup-system-spacing = #'((basic-distance . 20))
    ragged-bottom = ##t
    evenHeaderMarkup = ##f
    oddHeaderMarkup = ##f
    oddFooterMarkup = \markup {
      \fill-line {
        \null
        \if \should-print-page-number
        \fromproperty #'page:page-number-string
      }
    }
    evenFooterMarkup = \oddFooterMarkup
  }

  \header {
    title    = "Xhanovia's Scale Book"
    subtitle = #(strftime "by Rey Abolofia, %Y" (localtime (current-time)))
  }

  \pageBreak

  \score {
    \header {
      title    = "C Major"
      subtitle = "(Concert Bb Major)"
    }
    \transpose c c' {
      \key c \major
      \time 4/4

      \transpose c c  { \scale }
      \transpose c c' { \scale }
      \transpose c c  { \arpeggio_two }

      a'1  \fingering
      b'1  \fingering
      c''1 \fingering
      \bar "|."
    }
  }

  \pageBreak

  \score {
    \header {
      title    = "F Major"
      subtitle = "(Concert Eb Major)"
    }
    \transpose c c' {
      \key f \major
      \time 4/4

      \transpose c f, { \scale }
      \transpose c f  { \scale }
      \transpose c f' { \scale }
      \transpose c f, { \arpeggio_three }

      bes'1 \fingering
      c''1  \fingering
      d''1  \fingering
      e''1  \fingering
      f''1  \fingering
      \bar "|."
    }
  }

  \pageBreak

  \score {
    \header {
      title    = "G Major"
      subtitle = "(Concert F Major)"
    }
    \transpose c c' {
      \key g \major
      \time 4/4

      \transpose c g, { \scale }
      \transpose c g  { \scale }
      \transpose c g' { \scale }
      \transpose c g, { \arpeggio_three }

      c''1   \fingering
      d''1   \fingering
      e''1   \fingering
      fis''1 \fingering
      g''1   \fingering
      \bar "|."
    }
  }

  \pageBreak

  \score {
    \header {
      title    = "Bb Major"
      subtitle = "(Concert Ab Major)"
    }
    \transpose c c' {
      \key bes \major
      \time 4/4

      \transpose c bes, { \scale }
      \transpose c bes  { \scale }
      \transpose c bes, { \arpeggio_two }

      g'1   \fingering
      a'1   \fingering
      bes'1 \fingering
      bes'1 \fingering
      \bar "|."
    }
  }

  \pageBreak

  \score {
    \header {
      title    = "D Major"
      subtitle = "(Concert C Major)"
    }
    \transpose c c' {
      \key d \major
      \time 4/4

      \transpose c d  { \scale }
      \transpose c d' { \scale }
      \transpose c d  { \arpeggio_two }

      a'1    \fingering
      b'1    \fingering
      cis''1 \fingering
      d''1   \fingering
      \bar "|."
    }
  }

  \pageBreak

  \score {
    \header {
      title    = "Eb Major"
      subtitle = "(Concert Db Major)"
    }
    \transpose c c' {
      \key es \major
      \time 4/4

      \transpose c es  { \scale }
      \transpose c es' { \scale }
      \transpose c es  { \arpeggio_two }

      bes'1 \fingering
      c''1  \fingering
      d''1  \fingering
      es''1 \fingering
      \bar "|."
    }
  }

  \pageBreak

  \score {
    \header {
      title    = "A Major"
      subtitle = "(Concert G Major)"
    }
    \transpose c c' {
      \key a \major
      \time 4/4

      \transpose c a, { \scale }
      \transpose c a  { \scale }
      \transpose c a, { \arpeggio_two }

      e'1   \fingering
      fis'1 \fingering
      gis'1 \fingering
      a'1   \fingering
      \bar "|."
    }
  }

  \pageBreak

  \score {
    \header {
      title    = "Ab Major"
      subtitle = "(Concert Gb Major)"
    }
    \transpose c c' {
      \key as \major
      \time 4/4

      \transpose c as, { \scale }
      \transpose c as  { \scale }
      \transpose c as, { \arpeggio_two }

      des1  \fingering
      aes1  \fingering
      des'1 \fingering
      aes'1 \fingering
      \bar "|."
    }
  }

  \pageBreak

  \score {
    \header {
      title    = "E Major"
      subtitle = "(Concert D Major)"
    }
    \transpose c c' {
      \key e \major
      \time 4/4

      \transpose c e, { \scale }
      \transpose c e  { \scale }
      \transpose c e' { \scale }
      \transpose c e, { \arpeggio_three }

      cis1   \fingering
      dis1   \fingering
      e1     \fingering
      cis'1  \fingering
      dis'1  \fingering
      e'1    \fingering
      cis''1 \fingering
      dis''1 \fingering
      e''1   \fingering
      \bar "|."
    }
  }

  \pageBreak

  \score {
    \header {
      title    = "Chromatic Scale"
      subtitle = ""
    }
    \transpose c c' {
      \key c \major
      \time 4/4

      \transpose c c, { \chromatic }
      \transpose c c  { \chromatic }
      \transpose c c' { \chromatic }

      ges,1 \fingering
      ais,1 \fingering
      b,1   \fingering
      f1    \fingering
      ges1  \fingering
      ais1  \fingering
      f'1   \fingering

      \break

      ges'1          \fingering
      ais'1          \fingering
      c''1           \fingering
      <cis'' des''>1 \fingering
      d''1           \fingering
      <dis'' es''>1  \fingering
      e''1           \fingering
      \bar "|."
    }
  }
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
