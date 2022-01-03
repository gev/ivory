[![GitHub Actions](https://img.shields.io/endpoint.svg?url=https%3A%2F%2Factions-badge.atrox.dev%2Fdistrap%2Fivory%2Fbadge&style=flat-square)](https://github.com/distrap/ivory/actions/workflows/ci.yaml)

# [Ivory][ivory]

Ivory is an embedded domain specific language (EDSL) which aims to provide
a systems-level programming language that removes some common pitfalls of
programming in C, without sacrificing expressivity.

This repository includes a [user guide][userguide] and some
[example][examples] Ivory programs. More information and tutorials are
available on [ivorylang.org](http://ivorylang.org).

The following paper describes the Ivory language:

* Trevor Elliott, Lee Pike, Simon Winwood, Pat Hickey, James Bielman, Jamey
  Sharp, Eric Seidel, John
  Launchbury. [Guilt-free Ivory](https://github.com/GaloisInc/ivory/blob/master/ivory-paper/ivory.pdf). Haskell
  Symposium, 2015.

Please cite this paper for when citing the language.

## Contents

* `ivory`: the Ivory language implementation and interpreter
* `ivory-backend-c`: a backend for compiling Ivory programs to C
* `ivory-eval`: native evaluation of Ivory programs
* `ivory-examples`: sample Ivory programs
* `ivory-opts`: an optimization framework and some optimization
  implementations, for the Ivory AST.
* `ivory-bitdata`: a macro language library for specifying bit-precise
  Ivory operations.
* `ivory-hw`: a macro language library for writing hardware drivers
  in Ivory.
* `ivory-model-check`: a backend for verifying Ivory programs with CVC4
* `ivory-quickcheck`: QuickCheck driver for ivory
* `ivory-serialize`: binary serialization support for Ivory data types
* `ivory-stdlib`: Ivory standard library
* `ivory-tasty`: unit testing helpers for testing Ivory programs

## Usage

See [ivory-tower-nix][ivory-tower-nix] for complete guide on using Ivory
to build embedded firmwares.

It is possible to use the repository with recent `cabal`
via `cabal.project`. No Hackage releases are planned since this
is a fork of older code base.

[ivory]: http://github.com/distrap/ivory
[userguide]: http://github.com/distrap/ivory/blob/master/ivory/user-guide.md
[examples]: http://github.com/distrap/ivory/tree/master/ivory-examples/examples
[galois]: http://galois.com
[ivory-tower-nix]: https://github.com/HaskellEmbedded/ivory-tower-nix/
