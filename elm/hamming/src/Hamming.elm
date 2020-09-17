module Hamming exposing (distance)


distance : String -> String -> Result String Int
distance left right =
  if String.length left /= String.length right then
    Result.Err "left and right strands must be of equal length"
  else
    Result.Ok <| calculateDistance left right 0

calculateDistance : String -> String -> Int -> Int
calculateDistance left right diff =
  if String.isEmpty left then
    diff
  else if matchingPrefix left right then
    calculateDistance (String.dropLeft 1 left) (String.dropLeft 1 right) diff + 1
  else
    calculateDistance (String.dropLeft 1 left) (String.dropLeft 1 right) diff

matchingPrefix : String -> String -> Bool
matchingPrefix left right =
  String.left 1 left /= String.left 1 right
