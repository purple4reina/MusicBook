\header {
  title      = "Nokh a Glezl Vayn"
  composer   = "Traditional"
  instrument = "Bb instruments"
  copyright  = #(strftime "transcribed by Rey Abolofia, %h %Y" (localtime (current-time)))
  tagline    = ##f
}

\layout {
  indent = #0
  ragged-last = ##f
}

\markup \vspace #2 % extra space after title

\score {
  \transpose bes c'' {
    \key c \minor
    \time 3/8

    \repeat volta 2 {
      c8. [es16] g c'
      es8. [g16] c' es'
      g8. [c'16] es' g'
      fis'16 \trill [es'8.] d'16 c'
      fis'16 [\acciaccatura { a'8 } g'8.] \tuplet 3/2 { bes'16 a'! g' }

      \break

      fis'8. [es'16] \tuplet 3/2 { es'16 d' c' }
      \acciaccatura { fis' } g'4 g'8
      c''4.
      c8. [es16] g c'
      es8. [g16] c' es'
      g8. [c'16] es' g'

      \break

      fis'16 \trill [es'8.] d'16 \trill c'
      fis'16 [\acciaccatura { a'8 } g'8.] \tuplet 3/2 { bes'16 a'! g' }
      fis'8. [es'16] \tuplet 3/2 { es'16 d' c' }
      \acciaccatura { fis'8 } g'8. [c'16] d' es'
      g'16 [fis' es'8] \tuplet 3/2 { es'16 d' c' }

      \break

      c'8. [g16] es'16 d'
      \alternative {
        \volta 1 {
          c'8 r g,
        }
        \volta 2 {
          c'8. ([b32 c'] cis' d' es' e')
        }
      }
    }

    \repeat volta 2 {
      e'8 \acciaccatura { g'8 } f'8 f'
      f'4 \grace {es'32 f'} es'16 [d']

      \break

      d'8 \acciaccatura { f'8 } es' es'~
      es'8 d'8. \trill c'16
      \grace { cis' es' } d'4 d'8
      d'8. [g16] aes16 b
      c'8. [d'16] es' f'
      g'16 [fis' es'8] \tuplet 3/2 { es'16 d' c' }

      \break

      e'8 \acciaccatura { g'8 } f'8 (c'')
      f'4 \grace {es'32 f'} es'16 [d']
      d'8 \acciaccatura { f'8 } es' (g')
      es'4 \grace {es'32 f'} \tuplet 3/2 { es'16 [d' c'] }
      \grace { cis'32 es' } d'4 d'8
      \acciaccatura { d'8 } g'8. [g16] aes b

      \break

      c'8. [es'16] g' es'
      \alternative {
        \volta 1 {
          c'8. [b32 (c'] cis' d' es' e')
        }
        \volta 2 {
          c'4 g8
        }
      }
    }

    \repeat volta 2 {
      c'8. [es'16] es' d'
      d'8. [f'16] f' es'

      \break

      es'8. [g'16] g' f'
      f'8. [aes'16] aes' g'
      g'8. [fis'16] fis' es'
      es'8. [d'16] d' c'
      fis'16 [g'8.] (g'8)
      c''4. \trill

      \break

      c'8. [es'16] es' d'
      d'8. [f'16] f' es'
      es'8. [g'16] g' f'
      f'8. [aes'16] aes' g'
      g'8. [fis'16] fis' es'

      \alternative {
        \volta 1 {
          es'8. [d'16] d' c'
          \break
          c'8 r16 c' g es
          c8 r g
        }
        \volta 2 {
          es'8. [d'16] g' b
          c'8 r16 c'' g' es'
          c'4 r8
          \bar "|."
        }
      }
    }
  }
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
