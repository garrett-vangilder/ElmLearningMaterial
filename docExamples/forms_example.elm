import Html exposing (..)
import Html.App as App
import Html.Attributes exposing (..)
import Html.Events exposing (onInput, onClick)
import String exposing (..)
import Debug as Debug



main =
  App.beginnerProgram { model = model, view = view, update = update }


-- MODEL

type alias Model =
  { name : String
  , password : String
  , passwordAgain : String
  , passwordLength : Int
  , age : Int
  }


model : Model
model =
  Model "" "" "" 0 0


-- UPDATE

type Msg
    = Name String
    | Password String
    | PasswordAgain String
    | PasswordLength Int
    | Age Int


update : Msg -> Model -> Model
update msg model =
  case msg of
    Name name ->
      { model | name = name }

    Password password ->
      { model | password = password }

    PasswordAgain password ->
      { model | passwordAgain = password }

    PasswordLength passwordLength ->
      { model | passwordLength = passwordLength}

    Age age ->
      { model | age = age}      


-- VIEW

view : Model -> Html Msg
view model =
  div []
    [ input [ type' "text", placeholder "Name", onInput Name ] []
    , input [ type' "password", placeholder "Password", onInput Password ] []
    , input [ type' "password", placeholder "Re-enter Password", onInput PasswordAgain ] []
    , input [ type' "number", placeholder "age" ] []
    , button [   ] [text "Submit" ]
    , viewValidation model
    ]

viewValidation : Model -> Html msg
viewValidation model =

  let
    (color, message) =
      if model.password == model.passwordAgain && model.age < 9 then
        ("green", "OK")
        else
        ("red", "Passwords do not match!")
  in
    div [ style [("color", color)] ] [ text message ]
