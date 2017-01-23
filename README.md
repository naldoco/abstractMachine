# abstractMachine
Kata: abstractMachine (TDD Style) - Graham Hutton's "Programming in Haskell 2nd Ed."

    git clone https://github.com/naldoco/abstractMachine
    cd abstractMachine
    
## Run tests with Stack
    stack init
    stack test

#### or:
    stack init
    stack exec ghci
    Prelude> :load  test/Tests.hs src/AbstractMachine.hs
    *Main> main
    
## Run tests with Cabal:
    cabal update
    cabal sandbox init
    cabal install tasty tasty-hunit
    cabal configure --enable-tests
    cabal build && dist/build/test/test
