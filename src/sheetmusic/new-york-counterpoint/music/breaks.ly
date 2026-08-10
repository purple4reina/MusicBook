% force exactly 6 measures per line in the full score, regardless of
% each part's own \break placement or the auto-breaking algorithm

nb = \noBreak
ob = \origBreak

% mvt I: 152 measures (3/2, with single 2/2 bars at 11, 23, 34)
breaksI = {
  s1. \nb s1. \nb s1. \nb s1. \nb s1. \nb s1. \ob
  s1. \nb s1. \nb s1. \nb s1. \nb s1  \nb s1. \ob
  s1. \nb s1. \nb s1. \nb s1. \nb s1. \nb s1. \ob
  s1. \nb s1. \nb s1. \nb s1. \nb s1  \nb s1. \ob
  s1. \nb s1. \nb s1. \nb s1. \nb s1. \nb s1. \ob
  s1. \nb s1. \nb s1. \nb s1  \nb s1. \nb s1. \ob
  \repeat unfold 19 {
    s1. \nb s1. \nb s1. \nb s1. \nb s1. \nb s1. \ob
  }
  s1. \nb s1.
}

% mvt II: 82 measures (3/4)
breaksII = {
  \repeat unfold 13 {
    s2. \nb s2. \nb s2. \nb s2. \nb s2. \nb s2. \ob
  }
  s2. \nb s2. \nb s2. \nb s2.
}

% mvt III: 107 measures (3/2)
breaksIII = {
  \repeat unfold 17 {
    s1. \nb s1. \nb s1. \nb s1. \nb s1. \nb s1. \ob
  }
  s1. \nb s1. \nb s1. \nb s1. \nb s1.
}

breaks = #(make-part "breaks"
  #{ \breaksI #}
  #{ \breaksII #}
  #{ \breaksIII #}
  #{ #}
  #{ #}
  #{ #}
)
