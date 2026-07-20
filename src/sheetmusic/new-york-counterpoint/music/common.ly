fadeIn = _\markup { \italic "fade in" } \<
fadeOut = _\markup { \italic "fade out" } \>
sim = ^\markup { \italic "sim." }
ten = ^\markup { \italic "tenuto sempre" }

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
