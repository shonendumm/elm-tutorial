module Main exposing (..)

import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)


main =
    Html.beginnerProgram { model = model, view = view, update = update }



-- model
-- type alias is an easier way to avoid writing model : Model -> Int


type alias Model =
    Int



-- the model function returns a model


model : Model
model =
    0



-- update


type Msg
    = Increment
    | Decrement



-- the update function takes in msg and model and returns a model


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1



-- view takes in a model as argument and returns a html msg, which will update the model in turn. Have to call toString on model because it's a number as defined in type alias Model = Int


view : Model -> Html Msg
view model =
    div []
        [ button [ onClick Increment ] [ text "+" ]
        , div [] [ text (toString model) ]
        , button [ onClick Decrement ] [ text "-" ]
        ]
