module Main where

import Test.Tasty
import Test.Tasty.HUnit

import AbstractMachine

exp1 :: Expr
exp1 = Val 4

exp2 :: Expr
exp2 = Add (Add (Val 2) (Val 3)) (Val 4)

exp3 :: Expr
exp3 = Add (Val 4) (Add (Val 2) (Val 3))

op1 :: Op
op1 = ADD 5

co1 :: Cont
co1 = [op1]

abstractMachineSuite :: TestTree
abstractMachineSuite =
  testGroup "AbstractMachine tests"
    [ testGroup "value"
        [ testCase ("value "++(show exp1)++" -> "++show 4) $
            (value exp1) @?= 4
        , testCase ("value "++(show exp2)++" -> "++show 9) $
            (value exp2) @?= 9
        , testCase ("value "++(show exp3)++" -> "++show 9) $
            (value exp3) @?= 9
        ]
    , testGroup "value'"
        [ testCase ("value' "++(show exp1)++" -> "++show 4) $
            (value' exp1) @?= 4
        , testCase ("value' "++(show exp2)++" -> "++show 9) $
            (value' exp2) @?= 9
        , testCase ("value' "++(show exp3)++" -> "++show 9) $
            (value' exp3) @?= 9
        ]
    , testGroup "eval"
        [ testCase ("eval "++(show exp1)++" "++(show co1)++" -> "++show 9) $
            (eval exp1 co1) @?= 9
        ]
    , testGroup "exec"
        [ testCase ("exec "++(show co1)++" "++(show 4)++" -> "++show 9) $
            (exec co1 4) @?= 9
        ]
    ]
main = defaultMain abstractMachineSuite
