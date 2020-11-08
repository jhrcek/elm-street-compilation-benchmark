# elm-street-compilation-benchmark

Repo demonstrating long compilation time issues when using elm-street.

Run the following to get details compilation timing stats (using [-ddump-timings](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/debugging.html#ghc-flag--ddump-timings) GHC flag)

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
Total time: 206.81s
104.55s    Record32
     81.19s    Simplifier
     9.68s    CodeGen
     4.79s    Float out(FOS {Lam = Just 0, Consts = True, OverSatApps = True})
     4.33s    Specialise
     2.88s    Demand analysis
     0.62s    Float out(FOS {Lam = Just 0, Consts = True, OverSatApps = False})
     0.52s    Renamer/typechecker
     0.39s    CoreTidy
     0.13s    Worker Wrapper binds
52.03s    Record16
     43.46s    Simplifier
     4.08s    CodeGen
     1.47s    Demand analysis
     1.25s    Float out(FOS {Lam = Just 0, Consts = True, OverSatApps = True})
     0.94s    Specialise
     0.34s    Float out(FOS {Lam = Just 0, Consts = True, OverSatApps = False})
     0.29s    Renamer/typechecker
     0.16s    CoreTidy
25.59s    Record08
     20.55s    Simplifier
     2.19s    CodeGen
     1.47s    Demand analysis
     0.68s    Float out(FOS {Lam = Just 0, Consts = True, OverSatApps = True})
     0.28s    Specialise
     0.17s    Float out(FOS {Lam = Just 0, Consts = True, OverSatApps = False})
     0.14s    Renamer/typechecker
13.76s    Record04
     11.49s    Simplifier
     1.18s    CodeGen
     0.48s    Demand analysis
     0.33s    Float out(FOS {Lam = Just 0, Consts = True, OverSatApps = True})
6.95s    Record02
     5.78s    Simplifier
     0.58s    CodeGen
     0.24s    Demand analysis
     0.18s    Float out(FOS {Lam = Just 0, Consts = True, OverSatApps = True})
3.92s    Record01
     2.81s    Simplifier
     0.33s    Renamer/typechecker
     0.31s    Demand analysis
     0.30s    CodeGen
```

Here are some raw numbers from the dump file (Produced via -ddump-timings ghc flag)


```bash
$ cat $(stack path --dist-dir)/build/src/Record32.dump-timings
Parser [Record32]: alloc=12525168 time=8.215
Renamer/typechecker [Record32]: alloc=916192000 time=520.621
Desugar [Record32]: alloc=23647344 time=13.301
Simplifier [Record32]: alloc=2563525920 time=2461.750
Specialise [Record32]: alloc=9548593176 time=4333.695
Float out(FOS {Lam = Just 0, Consts = True, OverSatApps = False}) [Record32]: alloc=636611112 time=620.067
Simplifier [Record32]: alloc=11215067040 time=12191.390
Simplifier [Record32]: alloc=13870109720 time=14673.831
Simplifier [Record32]: alloc=14110315752 time=16238.578
Float inwards [Record32]: alloc=12416 time=0.011
Called arity analysis [Record32]: alloc=13576 time=0.009
Simplifier [Record32]: alloc=12901895328 time=15288.264
Demand analysis [Record32]: alloc=3412214824 time=1796.177
Worker Wrapper binds [Record32]: alloc=110171360 time=126.500
Simplifier [Record32]: alloc=11580286456 time=11140.472
Exitification transformation [Record32]: alloc=13208 time=0.012
Float out(FOS {Lam = Just 0, Consts = True, OverSatApps = True}) [Record32]: alloc=2513409928 time=4789.068
Common sub-expression [Record32]: alloc=12504 time=0.010
Float inwards [Record32]: alloc=12416 time=0.012
Simplifier [Record32]: alloc=9410147520 time=9195.767
Demand analysis [Record32]: alloc=2121005720 time=1088.201
CoreTidy [Record32]: alloc=486177648 time=386.072
CorePrep [Record32]: alloc=10600 time=0.024
CodeGen [Record32]: alloc=6541258896 time=4166.720
CorePrep [Record32]: alloc=10600 time=0.023
CodeGen [Record32]: alloc=6922256688 time=5509.601
```
