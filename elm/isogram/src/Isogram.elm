module Isogram exposing (isIsogram)

import Set

isIsogram : String -> Bool
isIsogram sentence =
  let
    letters = String.toLower sentence |> String.toList |> List.filter Char.isAlpha
  in

  (List.length <| uniq letters) == List.length letters

uniq : List comparable -> List comparable
uniq list =
  List.sort list
  |> List.foldr keepIfUnique []

keepIfUnique : a -> List a -> List a
keepIfUnique val acc =
  case acc of
    [] -> val :: acc
    x :: _ ->
      if x == val then
        acc
      else
        val :: acc
