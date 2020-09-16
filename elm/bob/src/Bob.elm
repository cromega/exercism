module Bob exposing (hey)

import String
import Char


hey : String -> String
hey remark =
  let
    text = String.trim remark

  in

  if isSilence text then
    "Fine. Be that way!"
  else if isQuestion text && isShout text then
    "Calm down, I know what I'm doing!"
  else if isShout text then
    "Whoa, chill out!"
  else if isQuestion text then
    "Sure."
  else
    "Whatever."

isQuestion : String -> Bool
isQuestion = String.endsWith "?"

isShout : String -> Bool
isShout text =
  containsLetters text && String.toUpper text == text

containsLetters : String -> Bool
containsLetters = String.any Char.isAlpha

isSilence : String -> Bool
isSilence = String.all isWhitespace

isWhitespace : Char -> Bool
isWhitespace char =
  List.member char [' ', '\t', '\n']
