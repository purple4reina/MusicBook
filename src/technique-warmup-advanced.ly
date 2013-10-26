\version "2.15.39"  % necessary for upgrading to future LilyPond versions.

\header{
title = "Clarinet Technique Studies"
subtitle = "by Reina Abolofia"
subsubtitle = \markup{ \italic "reina@clarinetcat.com -- (503)515-9787" }
tagline = ""
}


{
\tempo 4 = 60 ~ 144
\repeat volta 2 { c'16 (d' e' f' g' f' e' d' c' d' e' f' g' f' e' d' }
c'1)
\repeat volta 2 { f16 (g a bes c' bes a g f g a bes c' bes a g }
f1)
\repeat volta 2 { bes16 (c' d' ees' f' ees' d' c' bes c' d' ees' f' ees' d' c' }
bes1)
\repeat volta 2 { ees'16 (f' g' aes' bes' aes' g' f' ees' f' g' aes' bes' aes' g' f' }
ees'1)
\repeat volta 2 { aes16 (bes c' des' ees' des' c' bes aes bes c' des' ees' des' c' bes }
aes1)
\repeat volta 2 { des'16 (ees' f' ges' aes' ges' f' ees' des' ees' f' ges' aes' ges' f' ees' }
des'1)
\repeat volta 2 { ges16 (aes bes ces' des' ces' bes aes ges aes bes ces' des' ces' bes aes }
ges1)
\repeat volta 2 { fis16 (gis ais b cis' b ais gis fis gis ais b cis' b ais gis }
fis1)
\repeat volta 2 { b16 (cis' dis' e' fis' e' dis' cis' b cis' dis' e' fis' e' dis' cis' }
b1)
\repeat volta 2 { e16 (fis gis a b a gis fis e fis gis a b a gis fis }
e1)
\repeat volta 2 { a16 (b cis' d' e' d' cis' b a b cis' d' e' d' cis' b }
a1)
\repeat volta 2 { d'16 (e' fis' g' a' g' fis' e' d' e' fis' g' a' g' fis' e' }
d'1)
\repeat volta 2 { g16 (a b c' d' c' b a g a b c' d' c' b a }
g1)
\bar "||"
}


{
\tempo 4 = 100 ~ 144
\repeat unfold 16 { e16-. } e1 r
\repeat unfold 16 { f16-. } f1 r
\repeat unfold 16 { fis16-. } fis1 r
\repeat unfold 16 { g16-. } g1 r
\repeat unfold 16 { gis16-. } gis1 r
\repeat unfold 16 { a16-. } a1 r
\repeat unfold 16 { ais16-. } ais1 r
\repeat unfold 16 { b16-. } b1 r
\repeat unfold 16 { c'16-. } c'1


\bar "||"
}
