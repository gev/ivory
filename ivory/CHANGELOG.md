TODO: next should be `0.2.0.0`, tag should be `ivory-0.2.0.0`

# Version [next](https://github.com/distrap/ivory/compare/0.1.0.4...main) (2024-MM-DD)

Changelog started

## Breaking changes

### `IvoryRef` class removed [#12](https://github.com/distrap/ivory/pull/12)

For migrating
- Remove `IvoryRef r` and `IvoryExpr` contstraints, add `KnownCostancy c` one
- Replace `r s` type with `Pointer 'Valid c s`

For example:

```diff
-arrayCopyFromOffset :: ( ANat n, ANat m, IvoryRef r
-                       , IvoryExpr (r s2 ('Array m ('Stored t)))
-                       , IvoryExpr (r s2 ('Stored t))
+arrayCopyFromOffset :: ( ANat n, ANat m, KnownConstancy c
                        , IvoryStore t
                        )
                     => Ref s1 ('Array n ('Stored t))
-                    -> r s2 ('Array m ('Stored t))
+                    -> Pointer 'Valid c s2 ('Array m ('Stored t))
```

## Additions

### Memory area attribute

Allows to generate `__attribute__` to memory area definitions.
For example:

```haskell
setAreaAttributes [ Section ".mySection" ]
```

Will generate
```c
extern bool test __attribute__(section(".mySection"));
```

### `SafeCast IDouble IFloat`

Instance added, which allows to downcast
from `IDouble` to `IFloat` safely, with
just a loss of precision.

### Allow for unticked `:->` type operator [#12](https://github.com/distrap/ivory/pull/12)

Backwards compatible, all occurences of `':->` can be simply replaced with `:->`.

---

`ivory` uses [PVP Versioning][1].

[1]: https://pvp.haskell.org

