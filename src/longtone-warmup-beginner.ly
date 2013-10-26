\version "2.15.39"  % necessary for upgrading to future LilyPond versions.

\header{
title = "Clarinet Warm-Ups"
subtitle = "by Reina Abolofia"
subsubtitle = \markup{ \italic "reina@clarinetcat.com -- (503)515-9787" }
tagline = ""
}


{
\key f \major
f1^"♩= 60"^\markup{ \bold "Long Tones" } (g a bes) r
c' (d' e' f') r
f' (g' a' bes') r
c'' (d'' e'' f'') r
f'' (g'' a'' bes'') r
c''' (d''' e''' f''') r
\bar "||"
}


{
c'1~^"♩= 60"^\markup{ \bold "Dynamics" }\pp\<
<< c'1~ { s4 s4 s4 s4\ff} >>
c'1\>~
<< c'1 { s4 s4 s4 s4\pp } >>
r1

d'1~\pp\<
<< d'1~ { s4 s4 s4 s4\ff} >>
d'1\>~
<< d'1 { s4 s4 s4 s4\pp } >>
r1

e'1~\pp\<
<< e'1~ { s4 s4 s4 s4\ff} >>
e'1\>~
<< e'1 { s4 s4 s4 s4\pp } >>
r1

f'1~\pp\<
<< f'1~ { s4 s4 s4 s4\ff} >>
f'1\>~
<< f'1 { s4 s4 s4 s4\pp } >>
r1

g'1~\pp\<
<< g'1~ { s4 s4 s4 s4\ff} >>
g'1\>~
<< g'1 { s4 s4 s4 s4\pp } >>

\bar "||"
}


{
\key f \major
f4^"♩= 60"^\markup{ \bold "Register Slurs" } (g f a f bes f c' f d' f e' f f' f2) r1
f'4 (e' f' d' f' c' f' bes f' a f' g f' f f'2)
\bar "||"
}
