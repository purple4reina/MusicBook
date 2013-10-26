\version "2.15.39"  % necessary for upgrading to future LilyPond versions.

\header{
title = "Clarinet Technique Studies"
subtitle = "by Reina Abolofia"
subsubtitle = \markup{ \italic "reina@clarinetcat.com -- (503)515-9787" }
tagline = ""
}


{
\tempo 4 = 60 ~ 100
 c'8 (d' e' f' g' f' e' d' c' d' e' f' g' f' e' d' 
c'1)
 g8 (a b c' d' c' b a g a b c' d' c' b a 
g1)
 f8 (g a bes c' bes a g f g a bes c' bes a g 
f1)
 d'8 (e' fis' g' a' g' fis' e' d' e' fis' g' a' g' fis' e' 
d'1)
 bes8 (c' d' ees' f' ees' d' c' bes c' d' ees' f' ees' d' c' 
bes1)
\bar "||"
}


{
\tempo 4 = 80 ~ 120
\key f \major
\repeat unfold 2 {f2}
\repeat unfold 4 {f4-.}
\repeat unfold 8 {f8-.}
\repeat unfold 1 {f1}
r1
\repeat unfold 2 {c'2}
\repeat unfold 4 {c'4-.}
\repeat unfold 8 {c'8-.}
\repeat unfold 1 {c'1}
r1
\repeat unfold 2 {f'2}
\repeat unfold 4 {f'4-.}
\repeat unfold 8 {f'8-.}
\repeat unfold 1 {f'1}
r1
\repeat unfold 2 {c''2}
\repeat unfold 4 {c''4-.}
\repeat unfold 8 {c''8-.}
\repeat unfold 1 {c''1}
r1
\repeat unfold 2 {f''2}
\repeat unfold 4 {f''4-.}
\repeat unfold 8 {f''8-.}
\repeat unfold 1 {f''1}
\bar "|."
}
