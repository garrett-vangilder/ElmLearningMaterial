-- THE ELM ARCHITECTURE

-- What does the basic pattern look like?
-- The basic pattern incorporates three separate parts: Model, Update, and View
-- Model - the state of your application
-- Update - a way to update the state
-- View - a way to view the state of your application



import Html exposing (..)


-- MODEL

type alias Model = { ... }


-- UPDATE

type Msg = Reset | ...

update : Msg -> Model -> Model
update msg model =
  case msg of
    Reset -> ...
    ...


-- VIEW

view : Model -> Html Msg
view model =
  ...
