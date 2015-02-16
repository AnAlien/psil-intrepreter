module Expression where


-- Psil expressions
data Expr = PsilInt Integer |
            PsilSymbol String |
            PsilFn ([Expr] -> Expr)
            