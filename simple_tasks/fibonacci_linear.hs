module Fibonacci where

fibonacci :: Integer -> Integer
fibonacci n = helper 0 1 n

helper actual prev n | n == 0 = actual
                     | n > 0  = helper (actual + prev) actual (n - 1)
                     | otherwise = helper prev (actual - prev) (n + 1)
