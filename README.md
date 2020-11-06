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
Total time: 401.30s
221.96s    Record32
     143.13s    Simplifier
     38.23s    Specialise
     25.48s    CodeGen
     5.70s    Demand analysis
     4.49s    Float out(FOS {Lam = Just 0, Consts = True, OverSatApps = True})
     2.03s    Renamer/typechecker
     1.78s    Float out(FOS {Lam = Just 0, Consts = True, OverSatApps = False})
     0.71s    CoreTidy
     0.36s    Worker Wrapper binds
95.92s    Record16
     66.27s    Simplifier
     11.99s    CodeGen
     7.88s    Specialise
     4.57s    Float out(FOS {Lam = Just 0, Consts = True, OverSatApps = True})
     2.70s    Demand analysis
     1.01s    Renamer/typechecker
     0.93s    Float out(FOS {Lam = Just 0, Consts = True, OverSatApps = False})
     0.35s    CoreTidy
     0.22s    Worker Wrapper binds
45.46s    Record8
     34.03s    Simplifier
     6.12s    CodeGen
     1.57s    Specialise
     1.47s    Demand analysis
     1.16s    Float out(FOS {Lam = Just 0, Consts = True, OverSatApps = True})
     0.46s    Renamer/typechecker
     0.37s    Float out(FOS {Lam = Just 0, Consts = True, OverSatApps = False})
     0.24s    CoreTidy
21.60s    Record4
     15.80s    Simplifier
     3.51s    CodeGen
     0.81s    Demand analysis
     0.56s    Float out(FOS {Lam = Just 0, Consts = True, OverSatApps = True})
     0.42s    Specialise
     0.21s    Renamer/typechecker
     0.14s    CoreTidy
     0.13s    Float out(FOS {Lam = Just 0, Consts = True, OverSatApps = False})
10.00s    Record2
     6.98s    Simplifier
     1.56s    CodeGen
     0.86s    Demand analysis
     0.26s    Float out(FOS {Lam = Just 0, Consts = True, OverSatApps = True})
     0.13s    Specialise
     0.11s    Renamer/typechecker
6.36s    Record1
     4.50s    Simplifier
     0.79s    CodeGen
     0.37s    Renamer/typechecker
     0.36s    Float out(FOS {Lam = Just 0, Consts = True, OverSatApps = True})
     0.23s    Demand analysis
```

Here are some raw numbers from the dump file (Produced via -ddump-timings ghc flag)


```bash
$ cat $(stack path --dist-dir)/build/src/Record32.dump-timings
Parser [Record32]: alloc=7423936 time=2.573
Renamer/typechecker [Record32]: alloc=2903312240 time=1746.190
Desugar [Record32]: alloc=32295152 time=17.529
Simplifier [Record32]: alloc=6906312008 time=7312.088
Specialise [Record32]: alloc=58866479752 time=35662.845
Float out(FOS {Lam = Just 0, Consts = True, OverSatApps = False}) [Record32]: alloc=1206695920 time=1397.087
Simplifier [Record32]: alloc=19411064584 time=18941.474
Simplifier [Record32]: alloc=21620186632 time=23330.186
Simplifier [Record32]: alloc=22010879072 time=26278.089
Float inwards [Record32]: alloc=12416 time=0.009
Called arity analysis [Record32]: alloc=13576 time=0.019
Simplifier [Record32]: alloc=19022974008 time=21679.064
Demand analysis [Record32]: alloc=6041641560 time=3288.244
Worker Wrapper binds [Record32]: alloc=184167736 time=333.958
Simplifier [Record32]: alloc=17938051968 time=21736.444
Exitification transformation [Record32]: alloc=13208 time=0.010
Float out(FOS {Lam = Just 0, Consts = True, OverSatApps = True}) [Record32]: alloc=4403068184 time=4238.404
Common sub-expression [Record32]: alloc=12504 time=0.020
Float inwards [Record32]: alloc=12416 time=0.017
Simplifier [Record32]: alloc=13889406104 time=18758.648
Demand analysis [Record32]: alloc=3651133560 time=1768.733
CoreTidy [Record32]: alloc=944583256 time=822.834
CorePrep [Record32]: alloc=10600 time=0.032
CodeGen [Record32]: alloc=19265709480 time=11761.421
CorePrep [Record32]: alloc=10600 time=0.032
CodeGen [Record32]: alloc=20408993344 time=12190.419
```
