# elm-street-compilation-benchmark

Repo demonstrating long compilation time issues when using elm-street.

Run the following to get detailed compilation timing stats (using [-ddump-timings](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/debugging.html#ghc-flag--ddump-timings) GHC flag)

```bash
# Ensure there are no build artifacts
stack clean
# Build while producing compilation timings statistics
stack build --ghc-options="-ddump-timings -ddump-to-file"
# Run script to produce summary of things that took a long time during compilation
./dump-timings.hs $(stack path --dist-dir)/build/src
```

## Results


- The compilation time seems to be linear in the number of data types that I'm deriving the instances for (i.e. there doesn't seem to be any quadratic blowup).
But having to wait over a minute for module with les that 20 data types seems bad enough.
- Tried compiling with more heap given to GHC, but compilation time improvements were only marginal

```bash
$ ./dump-timings.hs $(stack path --dist-dir)/build/src
Total time: 214.18s
111.46s    Record32
     87.34s    Simplifier
     9.45s    CodeGen
     5.46s    Float out(FOS {Lam = Just 0, Consts = True, OverSatApps = True})
     4.01s    Specialise
     3.28s    Demand analysis
     0.74s    Float out(FOS {Lam = Just 0, Consts = True, OverSatApps = False})
     0.59s    Renamer/typechecker
     0.40s    CoreTidy
     0.18s    Worker Wrapper binds
53.01s    Record16
     42.10s    Simplifier
     4.67s    CodeGen
     2.82s    Float out(FOS {Lam = Just 0, Consts = True, OverSatApps = True})
     1.68s    Demand analysis
     0.90s    Specialise
     0.32s    Float out(FOS {Lam = Just 0, Consts = True, OverSatApps = False})
     0.25s    Renamer/typechecker
     0.21s    CoreTidy
26.53s    Record08
     21.89s    Simplifier
     2.26s    CodeGen
     0.90s    Demand analysis
     0.73s    Float out(FOS {Lam = Just 0, Consts = True, OverSatApps = True})
     0.24s    Specialise
     0.16s    Float out(FOS {Lam = Just 0, Consts = True, OverSatApps = False})
     0.15s    CoreTidy
     0.14s    Renamer/typechecker
13.10s    Record04
     10.85s    Simplifier
     1.15s    CodeGen
     0.49s    Demand analysis
     0.33s    Float out(FOS {Lam = Just 0, Consts = True, OverSatApps = True})
6.16s    Record02
     5.02s    Simplifier
     0.59s    CodeGen
     0.24s    Demand analysis
     0.19s    Float out(FOS {Lam = Just 0, Consts = True, OverSatApps = True})
3.94s    Record01
     2.73s    Simplifier
     0.43s    Renamer/typechecker
     0.29s    Float out(FOS {Lam = Just 0, Consts = True, OverSatApps = True})
     0.28s    CodeGen
     0.13s    Demand analysis
```

Here are some raw numbers from the dump file (Produced via -ddump-timings ghc flag)


```bash
$ cat $(stack path --dist-dir)/build/src/Record32.dump-timings
Parser [Record32]: alloc=12839160 time=4.607
Renamer/typechecker [Record32]: alloc=776022016 time=591.216
Desugar [Record32]: alloc=22438440 time=12.791
Simplifier [Record32]: alloc=2635943624 time=3048.873
Specialise [Record32]: alloc=8447365736 time=4008.432
Float out(FOS {Lam = Just 0, Consts = True, OverSatApps = False}) [Record32]: alloc=674100792 time=738.786
Simplifier [Record32]: alloc=11780312976 time=13391.150
Simplifier [Record32]: alloc=14540708520 time=17474.144
Simplifier [Record32]: alloc=14033469216 time=16115.736
Float inwards [Record32]: alloc=15736 time=0.010
Called arity analysis [Record32]: alloc=17312 time=0.010
Simplifier [Record32]: alloc=12417843392 time=15978.701
Demand analysis [Record32]: alloc=3478244080 time=2036.508
Worker Wrapper binds [Record32]: alloc=103539960 time=177.222
Simplifier [Record32]: alloc=11473355400 time=11771.120
Exitification transformation [Record32]: alloc=18256 time=0.048
Float out(FOS {Lam = Just 0, Consts = True, OverSatApps = True}) [Record32]: alloc=2734319400 time=5463.469
Common sub-expression [Record32]: alloc=16840 time=0.010
Float inwards [Record32]: alloc=15736 time=0.017
Simplifier [Record32]: alloc=9073882592 time=9556.015
Demand analysis [Record32]: alloc=2200519272 time=1240.405
CoreTidy [Record32]: alloc=461112376 time=399.507
CorePrep [Record32]: alloc=16728 time=0.033
CodeGen [Record32]: alloc=6594844872 time=4818.133
systool:as: alloc=96184 time=0.752
CorePrep [Record32]: alloc=16728 time=0.031
CodeGen [Record32]: alloc=6940624816 time=4628.407
systool:as: alloc=99064 time=0.786
```
