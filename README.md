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