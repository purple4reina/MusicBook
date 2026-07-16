# New York Counterpoint

To play midi from laptop

```
$ fluidsynth -a coreaudio -i ../soundfonts/TimGM6mb.sf2 "parts/full-score.midi"
```

To convert midi to audio file

```
$ fluidsynth -F "parts/full-score.wav" -T wav ../soundfonts/TimGM6mb.sf2 "parts/full-score.midi"
```
