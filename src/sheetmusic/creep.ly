\header {
    title     = "Creep"
    subtitle  = "Radiohead"
    composer  = "Yorke, Greenwood, Selway, Greenwood, O'Brien, Hammond, Hazlewood"
    arranger  = #(strftime "arr. Rey Abolofia, %Y" (localtime (current-time)))
    tagline   = ##f
}

\layout {
    %ragged-last = ##f
}

\new StaffGroup <<
    \new Staff \with { instrumentName = "Clarinet I" }
    \transpose bes c'' {
        \key g \major
        \time 4/4
        \tempo 4 = 93
        \compressEmptyMeasures

        r8 d g d g b4 g8
        d'8 b g b ~b g d g
        r8 fis dis' fis b dis'4 b8
        e'8 b fis dis' ~dis' fis dis' b

        r8 g e' g c' e' c' g
        f' c' g e' ~e' g e' c'
        g es' c' g es' c' g c'
        g es' c' g es' c' g c'

        \repeat volta 2 {
            r8 d g d g g4 d8
            b8 g d g ~g d b g
            dis'8 fis b fis b b4 fis8

            dis'8 b fis b ~b fis dis' b
            r8 g e' g c' e'4 c'8
            e'8 c' g c' ~c' g c' es' ~

            es'8 f' g c' es' c' g c'
            es'8 g c' g c' es' g c'
            r8 d b d g b4 g8

            g'8 d' b d' ~d' b g' b
            r8 b fis' b dis' fis' dis' fis'
            b'8 fis' dis' fis' ~fis' dis' b' dis'

            r8 g e' c' e' g c' e'
            c''8 g' e' g' ~g' e' c'' g'
            g8 c' es' g es' c' g c'
            g8 c' es' g es' c' g c'

            b4 b b b
            b4 b b b
            dis'4 dis' dis' dis'

            dis'4 dis' dis' dis'
            e'4 e' e' e'
            e'4 e' e' e'

            es'4 es' es' es'
            f'1
        }
    }

    \new Staff \with { instrumentName = "Clarinet II" }
    \transpose bes c' {
        \key g \major
        \time 4/4
        \tempo 4 = 93
        \compressEmptyMeasures

        g1 g1
        b1 b1
        c'1 c'1
        c'1 c'1

        \repeat volta 2 {
            \repeat unfold 3 {
                g1 g1
                b1 b1
                c'1 c'1
                c'1 c'1
            }
        }
    }
>>


\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
