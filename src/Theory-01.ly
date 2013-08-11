
%%%% KEY SIGNATURES %%%% 


\header {
    title = "Music Theory"
    subtitle = "Key Signatures"
}

\markup {
    \column {
        \null
        \null
        \null
        \line { A flat key signature is named by finding the second to last flat }
        \line { A sharp key signature is named by finding the last sharp and moving up one note }
        \line { Order of flats: B E A D G C F }
        \line { Order of sharps: F C G D A E B }
        \null
        \null
        \null
    }
}

\score {
    \relative c {
        \time 4/2
        \set Staff.printKeyCancellation = ##f
        \override Staff.TimeSignature #'stencil = ##f

        \key f \major
        s1 s
        \bar "||"
        \key g \major
        s1 s
        \bar "||"
        \key e \major
        s1 s
        \bar "||"
        \key des \major
        s1 s
        \bar "||"
        \key bes \major
        s1 s
        \bar "||"
        \key d \major
        s1 s
        \bar "|."
    }
    \layout {
        indent = #0
    }
    \header {
       piece = "Name the key signature" 
    }
}

\score {
    \relative c {
        \time 4/2
        \set Staff.printKeyCancellation = ##f
        \override Staff.TimeSignature #'stencil = ##f

        s1_\markup { E \flat } s
        \bar "||"
        s1_\markup { A } s
        \bar "||"
        s1_\markup { A \flat } s
        \bar "||"
        s1_\markup { B } s
        \bar "||"
        s1_\markup { C } s
        \bar "||"
        s1_\markup { A \sharp } s
        \bar "|."
    }
    \layout {
        indent = #0
        \context {
          \Score
          \override SpacingSpanner
            #'base-shortest-duration = #(ly:make-moment 1 120 )
        } 
    }
    \header {
        piece = "Write the key signature"
    }
}




\version "2.16.2"
