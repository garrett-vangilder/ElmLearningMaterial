import Basics exposing (..)
import String exposing (..)
import Html

maxCharacterLength = 
    10

upperCase name = 
    if length name > maxCharacterLength then      
        toUpper name
    else
        name

main = 
    Html.text (upperCase "james moore")
