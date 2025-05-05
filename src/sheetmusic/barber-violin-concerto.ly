\header {
  title     = "Concerto"
  subtitle  = "for Violin and Orchestra"
  composer  = "Samuel Barber"
  copyright = #(strftime "transcribed by Rey Abolofia, %h %Y" (localtime (current-time)))
  tagline   = ##f
}

\layout {
  indent = #0
  ragged-last = ##f
}

\markup \vspace #2 % extra space after title

tup = \tuplet 3/2 \etc


addTicks =
#(define-music-function (m) (ly:music?)
   #{ << $m
         \new Devnull \with {
           \consists Drum_note_performer
           \consists Staff_performer
           \consists Dynamic_performer
           midiInstrument = #"woodblock"
         } \drummode {
           <>\ff \repeat unfold
           $(ly:moment-main-numerator
             (ly:moment-div
              (ly:music-length m)
              (ly:make-moment 1 4)))
           rb4 }>> #})


\score {
  \midi { \tempo 4 = 144 }
  \layout {}

  \new Staff \addTicks
  \transpose c c {
    \key c \major
    \clef bass

    \time 4/4
    r1 r1

    \tup { b,8 (e c } \tup { d b, e } \tup { c d b, } \tup { e c d) }
    b,8 (e) e4 ~e8 r r4

    r2 \tup { cis8 (fis d } \tup { e cis fis }
    \tup { d e cis } \tup { fis d e) } es8 (a) a4
    ~a2 ~a8 r r8. e!16 (
    \time 3/2
    gis8. b16 fis [a gis e]) fis8 c'! c'2 ~c'8 r

    \time 4/4
    \tup { a8 (b) b } \tup { gis (c') c' } \tup { a8 (b) b } \tup { gis (c') c' }
    ais fis' fis'2 ~fis'8 r
    \tup { g'8 (fis') fis' } \tup { ais (b) ais } \tup { g'8 (fis') fis' } \tup { ais (b) ais }
    \time 3/4
    b8 f! f2

    bes8 e e4 bes'8 e'
    e'4 f8 c c4
    \time 4/4
    bes8 [e] g [d] f [c] bes [e]
    bes8 [e] gis [d] f [c] \tup { e8 e e }

    a8 r \tup { r r a } r4 a8 r
  }
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
