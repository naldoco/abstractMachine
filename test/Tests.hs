module Main where

import Test.Tasty
import Test.Tasty.HUnit

import AbstractMachine

exp1 :: Expr
exp1 = Val 4

abstractMachineSuite :: TestTree
abstractMachineSuite =
  testGroup "AbstractMachine tests"
    [ testGroup "value"
        [ testCase ("value "++(show exp1)++" -> "++show 4) $
            (value exp1) @?= 4
        ]
    , testGroup "value'"
        [ testCase ("value' "++(show exp1)++" -> "++show 4) $
            (value' exp1) @?= 4
        ]
    ]
main = defaultMain abstractMachineSuite
