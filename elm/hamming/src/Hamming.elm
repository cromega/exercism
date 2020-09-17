module Hamming exposing (distance)


distance : String -> String -> Result String Int
distance left right =
  if String.length left /= String.length right then
    Result.Err "left and right strands must be of equal length"
  else
    Result.Ok <| calculateDistance left right 0 0

calculateDistance : String -> String -> Int -> Int -> Int
calculateDistance left right index diff =
  if index >= String.length left then
    diff
  else if matchingSection left right index then
    calculateDistance left right (index + 1) diff
  else
    calculateDistance left right (index + 1) (diff + 1)

matchingSection : String -> String -> Int -> Bool
matchingSection left right index =
  String.slice index (index +1) left == String.slice index (index + 1) right
