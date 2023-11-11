let haskellCi =
      https://raw.githubusercontent.com/sorki/github-actions-dhall/main/haskell-ci.dhall

in    haskellCi.generalCi
        ( haskellCi.defaultCabalSteps
          with extraSteps.pre
               =
            [ haskellCi.BuildStep.Name
                { name = "CVC4 dependency", run = "sudo apt install cvc4" }
            ]
        )
        haskellCi.DhallMatrix::{=}
    : haskellCi.CI.Type
