\header {
  title     = "Concerto"
  subtitle  = "for Clarinet in A and Orchestra"
  composer  = "W. A. Mozart"
  copyright = #(strftime "transcribed by Rey Abolofia, %h %Y" (localtime (current-time)))
  tagline   = ##f
}

\layout {
  indent = #3
  ragged-last = ##t
}

\parallelMusic clarinet, pianoOne, pianoTwo {
  g2       e4. (f8) |
  cis'2    a4. (b8) |
  a8 a a a a a a a |

  a8 (g) f e e4 r |
  d'8 (cis') b a a4 r |
  a4 r r8 a cis' a |

  f4 (d8) r f4 (d8) r |
  fis4 (d8) r fis4 (d8) r |
  <b d>4 r <b d>4 r |

  c2 (b,4) r |
  cis2 (b,4) r |
  r8 e e e e e' (dis' d' |

  \break

  c2 ~c16 (b, c b, d c b, a, |
  e2 (d4 cis |
  cis'8) cis' cis' cis' b b a a |

  g,8 f) f2 e4 |
  b,4) <b gis>2-> (a4) |
  gis4 e' (eis' fis') |

  d16 (e f g gis a f d c4) e8 (d |
  <b fis>4 r8 fis16 (d) cis8 (e d e) |
  d'4 r8 d e4 <e gis> |

  c4)
  cis8
  a8
}

\score {
  \transpose c c' {
    <<
      % clarinet
      \new Staff \transpose c c' {
        \key c \major
        \time 4/4
        \tempo "Allegro"

        g2 e4. (f8)
        a8 (g) f e e4 r
        f4 (d8) r f4 (d8) r
        c2 (b,4) r

        \break

        c2 ~c16 (b, c b, d c b, a,
        g,8 f) f2 e4
        d16 (e f g gis a f d c4) e8 (d
        c4)
      }

      % piano
      \new PianoStaff \transpose a, c <<
        \new Staff \transpose c c {
          \key a \major
          \time 4/4
          \tempo "Allegro"

          cis'2 a4. (b8)
          d'8 (cis') b a a4 r
          fis4 (d8) r fis4 (d8) r
          cis2 (b,4) r

          \break

          e2 (d4 cis
          b,4) <b gis>2-> (a4)
          <b fis>4 r8 fis16 (d) cis8 (e d e)
          cis8
        }

        \new Staff \transpose c c, {
          \key a \major
          \clef bass
          \time 4/4
          \tempo "Allegro"

          a8 a a a a a a a
          a4 r r8 a cis' a
          <b d>4 r <b d> r
          r8 e e e e e' (dis' d'

          \break

          cis'8) cis' cis' cis' b b a a
          gis4 e' (eis' fis')
          d'4 r8 d e4 <e gis>
          a8
        }
      >>
    >>
  }
}

\score {
  <<
    <<
      \transpose c c'' { \clarinet }
      \\
      \transpose a c'' { \pianoOne }
    >>
    \transpose a c' { \pianoTwo }
  >>
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
