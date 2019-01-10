module Roots where

roots a b c =
    (
        (-b - sqrt(b ^ 2 - 4 * a * c)) / (2 * a)
    ,
        (-b + sqrt(b ^ 2 - 4 * a * c)) / (2 * a)
    )


roots' a b c = 
    let
        x1 = (-b - d) / aTwice
        x2 = (-b + d) / aTwice
        d = sqrt $ b ^ 2 - 4 * a * c
        aTwice = 2 * a
    in (x1, x2)
