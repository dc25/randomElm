import Html exposing (..)
import Time exposing (..)
import Random exposing (..)


main : Signal Html
main = every 1
       |> Signal.map (\t -> (round t) % 80000) 
       |> Signal.map (\tmod -> let (b, _) = initialSeed tmod |> generate bool in (b,tmod))
       |> Signal.map (text << toString) 
