module Tokens where

data Token = A | B | C 
  deriving Eq
instance Show Token where
    show A = "草"
    show B = "泥"
    show C = "马"
