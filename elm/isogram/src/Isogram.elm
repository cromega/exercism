module Isogram exposing (isIsogram)

import Set

isIsogram : String -> Bool
isIsogram sentence =
  let
    letters = String.toLower sentence |> String.toList |> List.filter Char.isAlpha
  in

  List.length letters == uniqueCount letters

uniqueCount : List comparable -> Int
uniqueCount list =
  Set.size <| Set.fromList list
