{-
    ws2gmh - Whitespace to GrassMudHorse translator
    
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
    ("草", ""),
    ("泥", ""),
    ("马", "")
    ]

subDict = [
    (" ", "草"),
    ("\t", "泥"),
    ("\n", "马")
    ]

main :: IO ()
main = do
    end <- isEOF
    if end
        then return ()
        else do
            line <- getLine
            putStrLn (strRep subDict (strRep preSubDict line) ++ "马")
            main
