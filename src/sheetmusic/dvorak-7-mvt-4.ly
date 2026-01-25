\header {
  title     = "Symphony No. 7"
  subtitle  = "IV"
  composer  = "Antonín Dvořák"
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
  \midi { \tempo 4 = 200 }
  \layout {}

  \new Staff \addTicks
  \transpose c c''' {
    \key f \major
    \clef treble
    \time 2/2


    \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
    \mark 12

    f1
    gis2. (f4)
    d4 (e) f (d8 a,)
    cis2. d4
    bes,4 (g,) a,-. a,-.
    f,2-> g,->
    e,1-^
    f,2-> (g,->)
    e,2. (d,4)

    \break

    cis,2-> (d,->)
    bes,,2 (a,,)
    g,2 (a,)
    g,2. (f,4)
    e,2 (f,)
    d,2 (cis,)
    a,2 (bes,)
    cis1
    a,2 (bes,)

    \break

    e1->
    a,2-> (bes,->)
    \mark 13
    f4 r r2
  }
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
