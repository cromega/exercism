module Isogram exposing (isIsogram, uniq)

isIsogram : String -> Bool
isIsogram sentence =
  let
    letters = String.toLower sentence |> String.toList |> List.filter Char.isAlpha
  in

  (List.length <| uniq letters) == List.length letters

uniq : List comparable -> List comparable
uniq = List.foldl rejectDuplicates []

rejectDuplicates : a -> List a -> List a
rejectDuplicates val acc =
  if List.member val acc then
    acc
  else
    acc ++ [val]
