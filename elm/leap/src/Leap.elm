module Leap exposing (isLeapYear)


isLeapYear : Int -> Bool
isLeapYear year =
  let
      f = isDivisible year
  in
      f 400 || xor (f 4) (f 100)

isDivisible : Int -> Int -> Bool
isDivisible n by =
  remainderBy by n == 0
