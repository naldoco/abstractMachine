module AbstractMachine where

data Expr = Val Int | Add Expr Expr deriving (Show)

value :: Expr -> Int
value _ = 4

value' :: Expr -> Int
value' = undefined
