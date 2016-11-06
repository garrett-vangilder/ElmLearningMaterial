import Html
import String exposing (..)



(~=) a b =
    String.left 1 a == String.left 1 b

main = 
        (~=) "Garrett" "Giraffe"
        |> toString 
        |> Html.text