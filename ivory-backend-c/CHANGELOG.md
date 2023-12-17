TODO: next should be `0.2.0.0`, tag should be `ivory-backend-c-0.2.0.0`

# Version [next](https://github.com/distrap/ivory/compare/0.1.0.4...main) (2024-MM-DD)

## Fixed wrong order of arugments for `logBase`

This incorrectly generated `logBase base x = log base / log x`
instead of `logBase base x = log x / log base`

## Now emits initializer for structs with empty initilizer [#10](https://github.com/distrap/ivory/pull/10/commits/c9c2584b3be75b965780d11ca16121d0274b4083)

Shaves off a GCC warning by emitting `={0};` for structs with empty initilizer.

---

`ivory-backend-c` uses [PVP Versioning][1].

[1]: https://pvp.haskell.org

