module Main where

import Expression
import Parser
import System.Environment


main :: IO ()
main = do args <- getArgs
          putStrLn ("Hello, " ++ args !! 0)
         