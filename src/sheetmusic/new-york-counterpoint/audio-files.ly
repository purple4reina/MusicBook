countOffMeasures = 2
baseTempo = 88  % score says 92

% Rehearsal-mark bookkeeping. \mark is shadowed below -- before the \include, the same
% trick as break = {} in full-score.ly -- but it deliberately makes no sound of its
% own: a sounding note there would lengthen the one part it sits in and desync it from
% the other ten. It records the mark's moment instead, and addTicks layers the cue onto
% the click track (which runs alongside the music, so it can gain notes for free) from
% the markMeasures* lists below. The recording is then used to prove those hand-written
% lists still agree with where the \marks actually are.
%
% Kept in one (begin (define ...)) so the set!s are ordinary Scheme in a single module.
#(begin
   (define mark-moments '())   ; alist: mark number -> moment
   (define mark-sections '())  ; newest first: (startMoment startTick denom measureTicks markMeasures)
   (define section-moment (ly:make-moment 0))
   (define section-tick 0)

   ;; addTicks calls this at parse time, once per section, in score order -- so it stays
   ;; in sync automatically even when movements are commented out of the \score below.
   (define (register-section! len ticks denom measureTicks markMeasures)
     (set! mark-sections
           (cons (list section-moment section-tick denom measureTicks markMeasures)
                 mark-sections))
     (set! section-moment (ly:moment-add section-moment len))
     (set! section-tick (+ section-tick ticks)))

   ;; all eleven parts carry the same 90 marks, so only the first sighting matters
   (define (record-mark! label ctx)
     (if (not (assv label mark-moments))
         (set! mark-moments
               (cons (cons label (ly:context-current-moment ctx)) mark-moments))))

   ;; moment -> (section-index measure tick-offset-within-measure), all 1-based
   (define (mark-location m)
     (let loop ((sections (reverse mark-sections)) (idx 1))
       (if (null? sections)
           #f
           (let* ((sec (car sections))
                  (start (list-ref sec 0))
                  (denom (list-ref sec 2))
                  (measureTicks (list-ref sec 3))
                  (len (ly:make-moment (apply + measureTicks) denom)))
             (if (and (not (ly:moment<? m start))
                      (ly:moment<? m (ly:moment-add start len)))
                 (let* ((delta (ly:moment-sub m start))
                        (tick (* denom (/ (ly:moment-main-numerator delta)
                                          (ly:moment-main-denominator delta)))))
                   (let measure-loop ((ms measureTicks) (measure 1) (t tick))
                     (cond ((null? ms) #f)
                           ((< t (car ms)) (list idx measure t))
                           (else (measure-loop (cdr ms) (1+ measure) (- t (car ms)))))))
                 (loop (cdr sections) (1+ idx)))))))

   (define (check-marks!)
     (let* ((sections (reverse mark-sections))
            (derived (make-vector (length sections) '()))
            (marks (sort mark-moments (lambda (a b) (< (car a) (car b))))))
       (for-each
        (lambda (entry)
          (let ((loc (mark-location (cdr entry))))
            (cond
             ((not loc)
              (ly:error "audio-files: could not place mark ~a in any section" (car entry)))
             ((not (zero? (list-ref loc 2)))
              (ly:error "audio-files: mark ~a is not on a downbeat (measure ~a, ~a ticks in)"
                        (car entry) (list-ref loc 1) (list-ref loc 2)))
             (else
              (let ((i (1- (list-ref loc 0))))
                (vector-set! derived i (cons (list-ref loc 1) (vector-ref derived i))))))))
        marks)
       (let loop ((secs sections) (i 0) (stale #f))
         (if (null? secs)
             (if stale
                 (ly:error "audio-files: markMeasures lists are stale -- paste the derived lists above")
                 (ly:message "audio-files: cued ~a rehearsal marks" (length marks)))
             (let ((got (sort (vector-ref derived i) <))
                   (want (list-ref (car secs) 4)))
               (if (equal? got want)
                   (loop (cdr secs) (1+ i) stale)
                   (begin
                     (ly:message "audio-files: section ~a derived mark measures: #'~a" (1+ i) got)
                     (loop (cdr secs) (1+ i) #t)))))))))

mark = #(define-music-function (label) (index?)
  #{ \applyContext #(lambda (ctx) (record-mark! label ctx)) #})

\include "music/clarinets.ly"

allParts = #(list
  clarinet_Live
  clarinet_I
  clarinet_II
  clarinet_III
  clarinet_IV
  clarinet_V
  clarinet_VI
  clarinet_VII
  clarinet_VIII
  clarinet_IX
  clarinet_X
)

% ticks-per-measure lists for the click track, one entry per measure, taken
% from music/breaks.ly. The downbeat of each measure gets a higher-pitched,
% more audible click (wbh = hi woodblock) than the rest of the beats (rb =
% ridebell), so the count-in and beat can be heard clearly in the mix.
% A measure carrying a rehearsal mark gets that same downbeat wbh three times
% in quick succession instead of once -- the contrast is rhythmic rather than
% timbral because MIDI velocity has no effect on these notes.
%
% mvt I: 152 measures, 3/2 (3 ticks) except mm. 11, 23 & 34, which are 2/2 (2 ticks)
ticksPerMeasureI = #(map (lambda (m) (if (memv m '(11 23 34)) 2 3)) (iota 152 1))

% mvt II: 82 measures, 3/4 (3 ticks each)
ticksPerMeasureII = #(make-list 82 3)

% mvt III: 107 measures, 3/2 (3 ticks each)
ticksPerMeasureIII = #(make-list 107 3)

% count-off: 2 lead-in measures plus \countOffMeasures rest measures, all 3/2
ticksPerMeasureCountOff = #(make-list (+ 2 countOffMeasures) 3)

% Measures carrying a rehearsal mark, one list per movement, in the same
% hand-maintained style as the tick lists above -- addTicks builds the click track
% at parse time, so it has to be told where the marks are before the \marks are
% ever interpreted. Compile-time verified against the real \mark positions; if
% these ever drift, the compile fails and prints the corrected lists.
% mvt I: marks 1-43
markMeasuresI = #'(7 12 18 24 30 35 41 48 50 53 55 56 58 60 61 64 66 68 70 71 74 77
                   79 81 82 85 87 88 90 92 93 96 98 100 102 104 106 114 122 128 136
                   144 150)
% mvt II: marks 44-60
markMeasuresII = #'(1 5 9 13 19 23 27 29 33 35 37 43 49 57 63 69 77)
% mvt III: marks 61-90
markMeasuresIII = #'(1 5 9 11 13 19 25 29 31 33 39 45 49 53 57 61 65 67 69 71 73 75
                     77 79 81 83 85 87 93 99)

addTicks = #(
  define-music-function
    (duration music measureTicks markMeasures)
    (number? ly:music? list? list?)
  (
    let* ((tickDuration (ly:make-duration (ly:intlog2 duration) 0 1))
          ;; a quarter of a tick, so a rehearsal-mark downbeat becomes three fast
          ;; clicks plus a rest and still occupies exactly one tick -- a tap every
          ;; 170ms at tempo 88, the same in every movement
          (cueDuration (ly:make-duration (+ 2 (ly:intlog2 duration)) 0 1))
          (musicTicks
            (ly:moment-main-numerator
              (ly:moment-div
               (ly:music-length music)
               (ly:make-moment 1 duration))))
          (measureTickTotal (apply + measureTicks)))
    (if (not (= musicTicks measureTickTotal))
        (ly:error
          "addTicks: measureTicks totals ~a ticks but music is ~a ticks long"
          measureTickTotal musicTicks))
    (register-section!
      (ly:music-length music) measureTickTotal duration measureTicks markMeasures)
    #{
      \tempo $tickDuration = \baseTempo
      <<
        $music
        \new Devnull \with {
          \consists Drum_note_performer
          \consists Staff_performer
          \consists Dynamic_performer
          midiInstrument = #"woodblock"
        } {
          \set Staff.midiMinimumVolume = #1
          #@(map
              (lambda (n measure)
                (if (memv measure markMeasures)
                    #{
                      \drummode {
                        wbh$cueDuration wbh$cueDuration wbh$cueDuration r$cueDuration
                        \repeat unfold $(max 0 (- n 1)) { rb$tickDuration }
                      }
                    #}
                    #{
                      \drummode {
                        wbh$tickDuration
                        \repeat unfold $(max 0 (- n 1)) { rb$tickDuration }
                      }
                    #}))
              measureTicks
              (iota (length measureTicks) 1))
        }
      >>
    #}
  )
)

countOff = {
  \time 3/2
  \transposition bes
  <>\ff <c' c''>1. <c' c''>1.
  R1.*\countOffMeasures
}

\score {
  \midi {
    \context {
      \Score
      \consists #(make-performer ((finalize performer) (check-marks!)))
    }
  }
  {
    \addTicks 2 << \countOff >> \ticksPerMeasureCountOff #'()
    \addTicks 2 << #@(map part-I allParts) >> \ticksPerMeasureI \markMeasuresI
    \addTicks 4 << #@(map part-II allParts) >> \ticksPerMeasureII \markMeasuresII
    \addTicks 2 << #@(map part-III allParts) >> \ticksPerMeasureIII \markMeasuresIII
  }
}

\version "2.25.12"  % necessary for upgrading to future LilyPond versions.
