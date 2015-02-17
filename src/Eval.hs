-- Module to Evaluate the Input
module Eval where

import Expression

-- Evaluating Psil Expression
eval :: Expr -> Integer
eval e = case e of
    PsilInt n -> n