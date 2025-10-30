\header {
  title      = "Slavonic Dance No. 8"
  composer   = "Dvorak"
  instrument = "Clarinet I"
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
  \layout {
    ragged-last = ##t
  }
  \transpose bes a'' {
    \compressEmptyMeasures
    \clef treble
    \key bes \major
    \time 3/4

    \mark D

    R2.*13

    <<
      \new CueVoice {
        \override MultiMeasureRest.staff-position = -6
        R2.*6
        \revert MultiMeasureRest.staff-position
      }
      \new CueVoice {
        \transpose a bes {
          \stemUp \acciaccatura d'8 ^(c'2.) \>
          b2. \dim
          g2 ^(a4
          b2. \pp
          fis2.
          g2.)
        }
      }
    >>

    \mark E
    f4-. \pp f-._\markup { \italic "sempre" } f-.

    \break

    d4 r r
    c4-. c-. c-.
    bes,4 r r
    c4-. c-. c-.
    d4 r r
    g4-- \< (g-- \! g-- \>
    f4--) \! r r
    es4-. es-. d-.

    \break

    bes,4 r r
    c4 r r
    d4 r r
    es4-. _\markup { \italic "sempre piu" \bold\italic "p"} es-. es-.
    d4 r r
    R2.*2
    a,4-. a,-. a,-.
    bes,4 r r

    \break

    bes,4-. bes,-. c-.
    d4 ^\markup { \bold "poco ritard." } r r
    R2.*5

    \bar "||"
    \mark F
  }
}

\markup \vspace #1  % extra space after title

\score {
  \layout {
    indent = #60
  }
  \transpose bes a'' {
    \compressEmptyMeasures
    \clef treble
    \key bes \major
    \time 3/4

    \mark L

    R2.*4
    <<
      \new CueVoice {
        \override MultiMeasureRest.staff-position = -6
        R2.*6
        \revert MultiMeasureRest.staff-position
      }
      \new CueVoice {
        \transpose a bes {
          \stemUp g4-. ^"Ob.1" \pp d-. d-.
          d'2. ^"Fl.1" \p
          ^(b2.
          a2.
          g2.)
          a2. ^(<>)
        }
      }
    >>

    \break

    d2. \p \<
    (es4 ^\markup { \bold "poco a poco meno mosso" } f \> es
    d2.) \!
    a,4 (bes, a,
    g,2.)
    c4_\markup { \italic "dim. molto" } (bes, c
    bes,2.)
    c4 (bes, c

    \break

    d2.)
    bes,4 (a, bes,
    a,2.)
    ges,4 (f, ges,
    f,2.)
    g,!2 _\markup { \italic "sempre dim." } (a,4
    bes,2.) ^\markup { \bold "piu ritard." }
    es4 (d c

    \break

    d2.)
    es4 \pp (d es
    f2.)
    ges4 (f es)
    \bar "||"
    f2 ^\markup { \bold "Presto" } \ff f4
    ~f4 f-- f--
    f2 f4
    f4 r r

    \bar "|."
  }
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
