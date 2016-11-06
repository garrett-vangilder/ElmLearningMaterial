module Main exposing (..)

import List 
import Html 


type alias Item = 
    { name : String
    , qty : Int
    , freeQty : Int
    }

cart : List Item        
cart =
    [ { name = "Lemon", qty = 1, freeQty = 0 }
    , { name = "Apple", qty = 5, freeQty = 0 }
    , { name = "Pear", qty = 10, freeQty = 0 }
    ]

freeItem : Int -> Int -> Item -> Item
freeItem minQty amtFree item =
    if item.qty >= minQty then 
        { item 
            | freeQty = item.freeQty + amtFree
        }
    else 
        item

newCart : List Item
newCart =
    List.map ((freeItem 5 1) >> (freeItem 10 3)) cart

main  : Html.Html msg
main =
    Html.text (toString newCart)    

