module Isogram exposing (isIsogram)

import Set

isIsogram : String -> Bool
isIsogram sentence =
  let
    letters = List.filter Char.isAlpha <| String.toList <| String.toLower sentence
  in

  (Set.fromList letters |> Set.size) == (List.length letters)



