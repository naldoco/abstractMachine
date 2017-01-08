module AbstractMachine where

data Expr = Val Int | Add Expr Expr deriving (Show)
type Cont = [Op]
data Op   = EVAL Expr | ADD Int deriving (Show)

value :: Expr -> Int
value _ = 4

value' :: Expr -> Int
value' (Val n) = n
value' (Add x y) = value' x + value' y

eval :: Expr -> Cont -> Int
eval = undefined

exec :: Cont -> Int -> Int
exec = undefined
