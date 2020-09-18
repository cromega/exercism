module Isogram exposing (isIsogram)

import Set

isIsogram : String -> Bool
isIsogram sentence =
  let
    letters = String.toLower sentence |> String.toList |> List.filter Char.isAlpha
  in

  (Set.fromList letters |> Set.size) == (List.length letters)



