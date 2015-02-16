module Expression where

data Expr = PsilInt Integer |
            PsilSymbol String |
            PsilFn ([Expr] -> Expr)