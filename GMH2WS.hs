{-
    gmh2ws - GrassMudHorse to Whitespace translator
    
    Author: soimort <mort.yao@gmail.com>
-}

module Main where

import qualified Data.Text as T
import Data.List(foldl')
import System.IO

replace :: String -> (String, String) -> String
replace s (a, b) = let
    [ss, aa, bb] = [T.pack x | x <- [s, a, b]]
    in
    T.unpack $ T.replace aa bb ss

strRep = flip $ foldl' replace

preSubDict = [
    (" ", ""),
    ("\t", ""),
    ("\n", "")
    ]

subDict = [
    ("草", " "),
    ("泥", "\t"),
    ("马", "\n")
    ]

main :: IO ()
main = do
    end <- isEOF
    if end
        then return ()
        else do
            line <- getLine
            putStr (strRep subDict (strRep preSubDict line))
            main
