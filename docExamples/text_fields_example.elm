import Html exposing (Html, Attribute, div, input, text)
import Html.App as App
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)
import String

main =
  App.beginnerProgram { model = model, view = view, update = update }

type alias Model =
  { content : String
  }

model : Model
model =
  { content = "Olleh" }

type Msg
  = Change String

update : Msg -> Model -> Model
update msg model =
  case msg of
    Change newContent ->
      {model | content = newContent}


view : Model -> Html Msg
view model =
  div []
  [input [placeholder "Text to Reverse", onInput Change] []
  , div [] [text (String.reverse model.content) ]
  ]
