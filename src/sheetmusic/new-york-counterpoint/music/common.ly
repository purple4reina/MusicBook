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

tplBeamer = #(define-music-function
            (one two three)
            (ly:music? ly:music? ly:music?) #{
              $one [
                \set stemLeftBeamCount = 1
                \set stemRightBeamCount = 1
              $two
                \set stemLeftBeamCount = 1
                \set stemRightBeamCount = 1
              $three ]
         #})

% one pair of parentheses enclosing several notes.  \parenthesize only ever
% marks a single event, so put the left half of the pair on the first note
% and the right half on the last:  \parenOpen b \parenClose es
#(define ((paren-half side) grob)
   (let ((both (parentheses-interface::calc-parenthesis-stencils grob)))
     (if (eq? side 'left)
         (list (car both) empty-stencil)
         (list empty-stencil (cadr both)))))

parenOpen  = \tweak Parentheses.stencils #(paren-half 'left)  \parenthesize \etc
parenClose = \tweak Parentheses.stencils #(paren-half 'right) \parenthesize \etc

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

#(if (not (defined? 'origBreak))
     (module-define! (current-module) 'origBreak break))
