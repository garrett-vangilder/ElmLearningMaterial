module Main exposing (..)

import List 
import Html 

cart =
    [ { name = "Lemon", qty = 1, freeQty = 0 }
    , { name = "Apple", qty = 5, freeQty = 0 }
    , { name = "Pear", qty = 10, freeQty = 0 }
    ]

freeItem minQty amtFree item =
    if item.qty >= minQty then 
        { item 
            | freeQty = item.freeQty + amtFree
        }
    else 
        item

newCart =
    List.map ((freeItem 5 1) >> (freeItem 10 3)) cart

main =
    Html.text (toString newCart)    

