-- Module to Parse Input
module Parser where

import Text.ParserCombinators.Parsec
import Expression
import Control.Monad

symbol :: Parser Char
symbol = oneOf "+*-/"

-- parse PsilAtom Expression
parsePsilAtom :: Parser PsilExpr
parsePsilAtom = do first <- letter <|> symbol
                   rest <- many (letter <|> digit <|> symbol)
                   let atom = [first] ++ rest
                   return $ case atom of
                               "#t" -> PsilBool True
                               "#f" -> PsilBool False
                               otherwise -> PsilAtom atom
