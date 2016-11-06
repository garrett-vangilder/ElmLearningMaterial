import Basics exposing (..)
import String exposing (..)
import Html



upperCase maxLength name = 
    if length name > maxLength then      
        toUpper name
    else
        name

main = 
    Html.text (upperCase 10 "james moore")
