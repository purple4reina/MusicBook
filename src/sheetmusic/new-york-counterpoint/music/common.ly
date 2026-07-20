fadeIn = _\markup { \italic "fade in" } \<
fadeOut = _\markup { \italic "fade out" } \>
sim = ^\markup { \italic "sim." }
ten = ^\markup { \italic "tenuto sempre" }

% special 8th two 16ths with rest over beam
beamer = #(define-music-function
            (one two three four)
            (ly:music? ly:music? ly:music? ly:music?) #{
              $one [
                \set stemLeftBeamCount = 1
                \set stemRightBeamCount = 1
              $two
                \set stemLeftBeamCount = 1
                \set stemRightBeamCount = 2
              $three
              $four ]
         #})

#(if (not (defined? 'make-part))
     (eval '(begin
              (use-modules (srfi srfi-9))
              (define-record-type <part>
                (make-part longName mvtI mvtII mvtIII)
                part?
                (longName part-name)
                (mvtI part-I)
                (mvtII part-II)
                (mvtIII part-III)))
           (current-module)))
