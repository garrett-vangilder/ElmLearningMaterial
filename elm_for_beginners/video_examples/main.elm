module Main exposing (..)
import Html

add a b = 
    a + b

result = 
    -- (add 1 2) 3
    add 1 2 |> \a -> a%2 == 0

counter =
    0

increment cnt amt = 
    let
        localCount = 
            cnt 
    in 
        localCount + amt 

main = 
    Html.text (toString result)