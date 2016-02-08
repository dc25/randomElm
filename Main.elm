import Html exposing (..)
import Time exposing (..)
import Random exposing (..)


main : Signal Html
main = every 1
       |> Signal.map (\t -> (round t) % 80000) 
       |> Signal.map (\tmod -> initialSeed (tmod) )
       |> Signal.map (\s -> let (b, ns) = generate bool s in (b,s))
       |> Signal.map (text << toString) 
