module Factorial where

factorial n | n >= 0 = helper 1 n
            | otherwise = error "args must be non negative"

helper acc 0 = acc
helper acc n = helper (acc * n) (n - 1)
