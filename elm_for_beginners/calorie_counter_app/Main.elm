module Main exposing (..)
import Html exposing (..)
import Html exposing (..)

import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Html.App as App

import String 

-- model

type alias Model = 
    { calories : Int
    , input : Int
    , error : Maybe String
    }

initModel : Model 
initModel = 
    Model 0 0 Nothing

-- update

type Msg 
    = AddCalories
    | Input String
    | Clear

update : Msg -> Model -> Model
update msg model =
    case msg of
        AddCalories ->
            { model
                | calories = model.calories + model.input
                , input = 0
            }

        Input val ->
            case String.toInt val of
                Ok input ->
                    { model
                        | input = input
                        , error = Nothing
                    }

                Err err ->
                    { model
                        | input = 0
                        , error = Just err
                    }

        Clear ->
            initModel


view : Model -> Html Msg
view model = 
    div []
     [ h3 [] [ text ("Total Calories: " ++ (toString model.calories))]
        , input 
            [type' "text"
            , onInput Input 
            , value 
                (if model.input == 0 then 
                    ""
                else 
                    toString model.input
                )
            ]
            []
        , div [] [text (Maybe.withDefault "" model.error)]
        , button
            [ type' "button" 
            , onClick AddCalories
            ] [text "Add"]
        , button
            [ type' "button"
            , onClick Clear
            ] [text "Clear"]
        , p [] [text (toString model)]
     ]

main : Program Never 
main =
    App.beginnerProgram
        {model = initModel
        , update = update
        , view = view 
        }

