-- Main Module
module Main where

import Expression
import Parser
import Eval
import System.Environment

numa = PsilInt 20
numb = PsilInt 10

main :: IO ()
main = do args <- getArgs
          putStrLn (show(eval(Plus numa numb)))