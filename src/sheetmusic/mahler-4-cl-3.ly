\include "common.ly"

\header {
  title      = "Symphony No. 4 in G Major"
  composer   = "Gustav Mahler"
  instrument = "Clarinet 3"
}

\layout {
  ragged-last = ##t
  \context {
    \Score
    \omit BarNumber
  }
}

\markup \vspace #2  % extra space after title

\score {
  \layout {
    indent = #60
    ragged-last = ##f
  }
  \transpose c c' {
    \key fis \major
    \time 4/4
    \markNum
    \override Score.SpacingSpanner.spacing-increment = 0.20
    \set Staff.instrumentName = \markup \bold "                                                               In Eb"

    \mark 11
    \new CueVoice {
      g1\repeatTie \ppp ^"bass clarinet"
      ~g1
    }
    R1*3
    r2 r4 r8 \tuplet 3/2 { cis'16 \mf (fis' ais') }
    cis''8. [bis'16 ais'8. \txtDown "dim" gis'16] fis'8. [eis'16 dis'8. cis'16]

    \break

    bis8. cis'16 dis'2.
    ~dis'8 r r4 r r8 \tuplet 3/2 { e'16 \f (a' cis'' }
    e''8.) [dis''16 cis''8. b'16] a'8. \txtDown "dim" [gis'!16 fis'8. e'16]
    dis'8. e'16 fis'2.
    ~fis'8 r r4 r2
    R1
    \bar "||"
    \mark 12
    \key es \major
    R1*4

    \break

    {
      \t{ bes'16-> \p (c'' bes' } aes'8-.)
      \t{ bes'16-> (c'' bes' } aes'8-.)
      \t{ bes'16-> (c'' bes' } aes'8-.)
      \t{ bes'16-> (c'' bes' } aes'8-.)
    }
    R1
    r2 r8 f16 \ff (g aes g f g)
    b,2. \fp r8 \t{ ges'16 \p (ces'' es'' }
    ges''8) r r4 r2
    R1*3

    \bar "||"
    \mark 13
    \key bes \major
    s
    \bar ""
  }
}

\markup \vspace #2  % extra space after title

\score {
  \layout {
    indent = #65
  }
  \transpose c c' {
    \key f \major
    \time 4/4
    \markNum
    \override Score.SpacingSpanner.spacing-increment = 0.20
    \set Staff.instrumentName = \markup \bold "                                                               In Eb"

    \mark 15
    R1*8
    fis''4-- \pp fis''-- fis''-- r
    R1
    fis''4-- \pp fis''-- fis''-- r
    R1

    \break

    fis''4-- \pp fis''-- fis''2
    ~fis''1 _\markup { \italic "sempre" \dynamic "pp" }
    ~fis''2.. r8
    fis''4 \pp fis'' fis''2
    ~fis''1 _\markup { \italic "sempre" \dynamic "pp" }
    \mark 16
    \bar "||"
    \key a \major
    R1*6
    r2 r4 r8 e' \ff
    a'4-> e''-> cis''8.
    b'16
    a'8-. e' (

    \break

    a'8-.) a'-. e''-. e''-. e''4 (a'8-.) e'-.
    cis''8-> b'16 cis'' d''8-> cis''16 b' a'4.-> e'8-.
    cis''8-> b'16 cis'' d''8-> cis''16 b' a'4.-> e'8-.
    cis''8-> (b'16 a' e'8-.) a'16 (b' cis''8-> b'16 a' e'8-.) b'16 (cis''

    \break

    \mark 17
    d''16 \ff e'' d'' e'' d'' e'' d'') cis'' (d'' cis'' d'' cis'' d'') a' (bes' a'
    bes'16 a' bes') eis' (fis' eis' fis' eis' fis') cis'! (d' cis' d'8-.) r
    \bar "||"
  }
}

\markup \vspace #2  % extra space after title

\score {
  \layout {
    indent = #40
    ragged-last = ##f
  }
  \transpose c c' {
    \key a \major
    \time 4/4
    \markNum
    \override Score.SpacingSpanner.spacing-increment = 0.20
    \set Staff.instrumentName = \markup \bold "                                                               In Eb"

    \mark 24
    R1*8
    R1*2
    R1
    \fermataBar
    R1*2
    R1 ^\markup { \italic "poco a a tempo" }

    \break

    r2 \txtUp "poco string" ges8. \p [a16 b8. cis'16]
    dis'8. [e'16 \txtDown "cresc" fis'8. gis'16] a'8. [b'16 cis''8. dis''16]
    e''8 ^"Allegro" r r4 r4 r8 b-. \ff
    gis'16 b' gis' e' fis' a' fis' dis' e'4-- b8-. b-.
    e'4-> b-> e'4-> b->
    e'8-. r e-. r e-. r r4
    \bar "|."
  }
}

\markup \vspace #2  % extra space after title

\score {
  \layout {
    indent = #10
  }
  \transpose c c' {
    \key e \major
    \time 3/8
    \markNum
    \set Staff.instrumentName = \markup \bold "                                                               In Eb"

    \new CueVoice {
      f8-. \> ^"bass clarinet" d-. e-.
      a8-. \p a,-. r
    }
    R4.*3
    fis'8 \p \< (d''16-.) r16 \f r8
    R4.*11
    \bar "||"
    \mark 13
  }
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
