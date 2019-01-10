module SeqA where

-- a0 = 1; a1 = 2; a2 = 3; ak + 3 = ak+2 + ak+1 − 2ak.

seqA :: Integer -> Integer
seqA n = helper 1 2 3 (n + 1)

helper a_k a_kp1 a_kp2 n | n == 1 = a_k
                         | n == 2 = a_kp1
                         | n == 3 = a_kp2
                         | n > 0  = helper a_kp1 a_kp2 (a_kp2 + a_kp1 - 2 * a_k) (n - 1)
                         | otherwise = error "argumants must be non positive"

