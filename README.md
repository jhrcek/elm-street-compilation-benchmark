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
Total time: 403.39s
221.69s    Record32
     146.79s    Simplifier
     34.78s    Specialise
     26.37s    CodeGen
     5.67s    Demand analysis
     4.16s    Float out(FOS {Lam = Just 0, Consts = True, OverSatApps = True})
     1.45s    Renamer/typechecker
     1.41s    Float out(FOS {Lam = Just 0, Consts = True, OverSatApps = False})
     0.81s    CoreTidy
     0.23s    Worker Wrapper binds
95.57s    Record16
     69.66s    Simplifier
     12.36s    CodeGen
     6.52s    Specialise
     2.86s    Demand analysis
     2.35s    Float out(FOS {Lam = Just 0, Consts = True, OverSatApps = True})
     0.74s    Renamer/typechecker
     0.58s    Float out(FOS {Lam = Just 0, Consts = True, OverSatApps = False})
     0.33s    CoreTidy
     0.16s    Worker Wrapper binds
46.98s    Record08
     35.58s    Simplifier
     6.34s    CodeGen
     1.63s    Demand analysis
     1.30s    Specialise
     1.15s    Float out(FOS {Lam = Just 0, Consts = True, OverSatApps = True})
     0.37s    Float out(FOS {Lam = Just 0, Consts = True, OverSatApps = False})
     0.37s    Renamer/typechecker
     0.15s    CoreTidy
21.96s    Record04
     15.96s    Simplifier
     3.13s    CodeGen
     1.30s    Float out(FOS {Lam = Just 0, Consts = True, OverSatApps = True})
     0.77s    Demand analysis
     0.35s    Specialise
     0.19s    Renamer/typechecker
     0.14s    Float out(FOS {Lam = Just 0, Consts = True, OverSatApps = False})
     0.10s    CoreTidy
10.97s    Record02
     8.38s    Simplifier
     1.55s    CodeGen
     0.44s    Demand analysis
     0.29s    Float out(FOS {Lam = Just 0, Consts = True, OverSatApps = True})
     0.10s    Specialise
6.23s    Record01
     4.52s    Simplifier
     0.79s    CodeGen
     0.44s    Renamer/typechecker
     0.22s    Demand analysis
     0.15s    Float out(FOS {Lam = Just 0, Consts = True, OverSatApps = True})
```

Here are some raw numbers from the dump file (Produced via -ddump-timings ghc flag)


```bash
$ cat $(stack path --dist-dir)/build/src/Record32.dump-timings
Parser [Record32]: alloc=7553544 time=2.646
Renamer/typechecker [Record32]: alloc=2376273872 time=1447.455
Desugar [Record32]: alloc=31506248 time=16.020
Simplifier [Record32]: alloc=7051341640 time=7389.166
Specialise [Record32]: alloc=53850937192 time=34783.871
Float out(FOS {Lam = Just 0, Consts = True, OverSatApps = False}) [Record32]: alloc=1281342488 time=1414.905
Simplifier [Record32]: alloc=20523035408 time=21210.605
Simplifier [Record32]: alloc=23032280880 time=27747.199
Simplifier [Record32]: alloc=22105764912 time=25809.056
Float inwards [Record32]: alloc=15736 time=0.010
Called arity analysis [Record32]: alloc=17312 time=0.011
Simplifier [Record32]: alloc=18678576424 time=22384.729
Demand analysis [Record32]: alloc=6152246856 time=3600.188
Worker Wrapper binds [Record32]: alloc=173171536 time=231.275
Simplifier [Record32]: alloc=17949195504 time=22559.009
Exitification transformation [Record32]: alloc=18256 time=0.012
Float out(FOS {Lam = Just 0, Consts = True, OverSatApps = True}) [Record32]: alloc=4815736640 time=4161.053
Common sub-expression [Record32]: alloc=16840 time=0.010
Float inwards [Record32]: alloc=15736 time=0.017
Simplifier [Record32]: alloc=13496735520 time=19691.209
Demand analysis [Record32]: alloc=3781586632 time=2065.964
CoreTidy [Record32]: alloc=900691824 time=805.868
CorePrep [Record32]: alloc=16728 time=0.032
CodeGen [Record32]: alloc=20017537712 time=13119.060
systool:as: alloc=96184 time=1.975
CorePrep [Record32]: alloc=16728 time=0.044
CodeGen [Record32]: alloc=21107857272 time=13248.488
systool:as: alloc=99064 time=1.982
```
