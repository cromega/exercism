module Bob exposing (hey)

import String
import Char


hey : String -> String
hey remark =
  let
    text = String.trim remark

  in

  if isEmpty text then
    "Fine. Be that way!"
  else if isForcefulQuestion text then
    "Calm down, I know what I'm doing!"
  else if isForceful text then
    "Whoa, chill out!"
  else if isQuestion text then
    "Sure."
  else
    "Whatever."

isQuestion : String -> Bool
isQuestion remark =
  String.right 1 remark == "?"

isForceful : String -> Bool
isForceful remark =
  containsLetters remark && String.toUpper remark == remark

isForcefulQuestion : String -> Bool
isForcefulQuestion remark =
  isForceful remark && isQuestion remark

containsLetters : String -> Bool
containsLetters remark =
  String.any Char.isAlpha remark

isEmpty : String -> Bool
isEmpty remark =
  String.isEmpty remark || String.all isWhitespace remark

isWhitespace : Char -> Bool
isWhitespace char =
  List.member char [' ', '\t', '\n']
