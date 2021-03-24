let haskellCi =
      https://raw.githubusercontent.com/sorki/github-actions-dhall/pending/haskell-ci.dhall

in    haskellCi.generalCi
        (   [ haskellCi.BuildStep.Name
                { name = "CVC4 dependency", run = "sudo apt install cvc4" }
            ]
          # haskellCi.matrixSteps
        )
        ( Some
            { ghc = [ haskellCi.GHC.GHC8104 ]
            , cabal = [ haskellCi.Cabal.Cabal32 ]
            }
        )
    : haskellCi.CI.Type
