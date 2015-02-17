-- Main Module
module Main where

import Expression
import Parser
import Eval
import System.Environment


main :: IO ()
main = do args <- getArgs
          putStrLn (show(eval(PsilInt 4)))