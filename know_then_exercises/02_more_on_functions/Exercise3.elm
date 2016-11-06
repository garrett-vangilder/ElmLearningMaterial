import Html
import String exposing (..)

wordCount string = 
    String.length string 

numberize number = 
    toString number 

wordCountGenerator string 
    = wordCount 

main =
    wordCount "I'm not with cats"
    |> toString 
    |> Html.text 