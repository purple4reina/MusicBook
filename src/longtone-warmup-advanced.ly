\version "2.15.39"  % necessary for upgrading to future LilyPond versions.

\header{
title = "Clarinet Warm-Ups"
subtitle = "by Reina Abolofia"
subsubtitle = \markup{ \italic "reina@clarinetcat.com -- (503)515-9787" }
tagline = ""
}


{
e1^"♩= 60"^\markup{ \bold "Long Tones" } (f fis g) r
gis (a ais b) r
c' (cis' d' dis') r
e' (f' fis' g') r
gis' (a' ais' b') r
c'' (cis'' d'' dis'') r
e'' (f'' fis'' g'') r
gis'' (a'' ais'' b'') r
\bar "||"
}


{
e4^"♩= 60"^\markup{ \bold "Register Slurs" } (b e' b' e'' b'' e''' b'' e'' b' e' b e1) r
f4 (c' f' c'' f'' c''' f''' c''' f'' c'' f' c' f1) r
fis4 (cis' fis' cis'' fis'' cis''' fis''' cis''' fis'' cis'' fis' cis' fis1) r
g4 (d' g' d'' g'' d''' g''' d''' g'' d'' g' d' g1) r
aes4 (ees' aes' ees'' aes'' ees''' aes''' ees''' aes'' ees'' aes' ees' aes1) r
a4 (e' a' e'' a'' e''' a''' e''' a'' e'' a' e' a1)
\bar "||"
}


{
e1~^"♩= 60"^\markup{ \bold "Dynamics" }\pp\<
<< e1~ { s4 s4 s4 s4\ff} >>
e1\>~
<< e1 { s4 s4 s4 s4\pp } >>
r1

f1~\pp\<
<< f1~ { s4 s4 s4 s4\ff} >>
f1\>~
<< f1 { s4 s4 s4 s4\pp } >>
r1

fis1~\pp\<
<< fis1~ { s4 s4 s4 s4\ff} >>
fis1\>~
<< fis1 { s4 s4 s4 s4\pp } >>
r1

g1~\pp\<
<< g1~ { s4 s4 s4 s4\ff} >>
g1\>~
<< g1 { s4 s4 s4 s4\pp } >>

\bar "||"
}