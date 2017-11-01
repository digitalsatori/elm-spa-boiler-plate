module Router exposing (..)

import Html exposing (..)


-- My Elm Files

import Types exposing (..)
import Routes.Home exposing (..)
import Routes.PageOne exposing (..)
import Routes.PageTwo exposing (..)


getPage : String -> Route
getPage hash =
    case hash of
        "#home" ->
            HomeRoute

        "#pageone" ->
            PageOneRoute

        "#pagetwo" ->
            PageTwoRoute

        _ ->
            HomeRoute



-- VIEW


view : Model -> Html Msg
view model =
    case model.route of
        HomeRoute ->
            home model

        PageOneRoute ->
            pageOne model

        PageTwoRoute ->
            pageTwo model
