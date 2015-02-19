
module Expression where


-- Psil expressions
data PsilExpr = PsilAtom String
              | PsilInt Integer
              | PsilString String
              | PsilList [PsilExpr]


-- Prints Psil expression
instance Show PsilExpr where
    show (PsilInt x) = show x