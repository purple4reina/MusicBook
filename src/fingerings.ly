\header{
    title = "Clarinet Fingerings"
    tagline = "Reina B Abolofia -- 503.515.9787 -- purple4reina@gmail.com -- v0.1"
}

\score {
    \layout {
        indent = #0
        ragged-last = ##f
        \context {
            \Score
            \override BarNumber.break-visibility = ##(#f #f #f)
        }
    }
\relative c''' {
    cis1
    ^\markup \override #'(size . 1.5) {
        \center-column {
            \woodwind-diagram
                #'clarinet
                #'(
                    (cc . (two three four five))
                    (lh . (thumb R))
                    (rh . ())
                )
        }
    }

    d
    ^\markup \override #'(size . 1.5) {
        \center-column {
            \woodwind-diagram
                #'clarinet
                #'(
                    (cc . (two three four))
                    (lh . (thumb R))
                    (rh . (gis))
                )
        }
    }

    es
    ^\markup \override #'(size . 1.5) {
        \center-column {
            \woodwind-diagram
                #'clarinet
                #'(
                    (cc . (two three four))
                    (lh . (thumb R))
                    (rh . (b gis))
                )
        }
    }

    es
    ^\markup \override #'(size . 1.5) {
        \center-column {
            \woodwind-diagram
                #'clarinet
                #'(
                    (cc . (two three six))
                    (lh . (thumb R))
                    (rh . (gis))
                )
        }
    }

    e
    ^\markup \override #'(size . 1.5) {
        \center-column {
            \woodwind-diagram
                #'clarinet
                #'(
                    (cc . (two three))
                    (lh . (thumb R))
                    (rh . (gis))
                )
        }
    }

\break

    f
    ^\markup \override #'(size . 1.5) {
        \center-column {
            \woodwind-diagram
                #'clarinet
                #'(
                    (cc . (two three))
                    (lh . (thumb R cis))
                    (rh . (gis))
                )
        }
    }

    fis
    ^\markup \override #'(size . 1.5) {
        \center-column {
            \woodwind-diagram
                #'clarinet
                #'(
                    (cc . (two))
                    (lh . (thumb R))
                    (rh . (b gis))
                )
        }
    }

    fis
    ^\markup \override #'(size . 1.5) {
        \center-column {
            \woodwind-diagram
                #'clarinet
                #'(
                    (cc . (one two four five six))
                    (lh . (thumb R))
                    (rh . (gis))
                )
        }
    }

    g
    ^\markup \override #'(size . 1.5) {
        \center-column {
            \woodwind-diagram
                #'clarinet
                #'(
                    (cc . (one four five))
                    (lh . (thumb R))
                    (rh . (gis))
                )
        }
    }

    g
    ^\markup \override #'(size . 1.5) {
        \center-column {
            \woodwind-diagram
                #'clarinet
                #'(
                    (cc . (one))
                    (lh . (thumb R))
                    (rh . (gis))
                )
        }
    }

\break

    g
    ^\markup \override #'(size . 1.5) {
        \center-column {
            \woodwind-diagram
                #'clarinet
                #'(
                    (cc . (two four five))
                    (lh . (thumb R))
                    (rh . (gis))
                )
        }
    }

    g
    ^\markup \override #'(size . 1.5) {
        \center-column {
            \woodwind-diagram
                #'clarinet
                #'(
                    (cc . (two))
                    (lh . (thumb R))
                    (rh . (four b gis))
                )
        }
    }

    aes
    ^\markup \override #'(size . 1.5) {
        \center-column {
            \woodwind-diagram
                #'clarinet
                #'(
                    (cc . (two three four six))
                    (lh . (thumb R fis))
                    (rh . ())
                )
        }
    }

    a
    ^\markup \override #'(size . 1.5) {
        \center-column {
            \woodwind-diagram
                #'clarinet
                #'(
                    (cc . (two three))
                    (lh . (thumb R fis))
                    (rh . ())
                )
        }
    }
}
}

% uncomment to see markdown options for fingerings in logs
% #(print-keys-verbose 'clarinet (current-error-port))

\version "2.18.2"
