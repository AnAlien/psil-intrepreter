
module Expression where


-- Psil expressions
data Expr = PsilInt Integer |
            PsilSymbol String |
            PsilFn ([Expr] -> Expr)


-- Prints Psil expression
instance Show Expr where
    show (PsilInt x) = show x
