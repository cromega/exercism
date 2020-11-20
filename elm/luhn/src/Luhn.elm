module Luhn exposing (valid)


valid : String -> Bool
valid input =
  let
      text = String.replace " " "" input
  in

  if String.length text < 2 then
    False
  else if not (String.all Char.isDigit text) then
    False
  else
    luhn text

luhn : String -> Bool
luhn input =
  input
  |> String.toList
  |> List.map String.fromChar
  |> List.filterMap String.toInt
  |> List.reverse
  |> List.indexedMap doubleEveryOther
  |> List.map normalize
  |> List.sum
  |> modBy 10
  |> (==) 0

doubleEveryOther : Int -> Int -> Int
doubleEveryOther i n =
  if modBy 2 i == 1 then
    n * 2
  else
    n

normalize : Int -> Int
normalize a =
  if a > 9 then
    a - 9
  else
    a
