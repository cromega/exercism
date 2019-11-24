module Bob exposing (hey)

isQuestion : String -> Bool
isQuestion msg =
  String.endsWith msg "?"

isShouting : String -> Bool
isShouting msg =
  msg == String.toUpper msg

isShoutingQuestion : String -> Bool
isShoutingQuestion msg =
  (isQuestion msg) && (isShouting msg)

isJustBob : String -> Bool
isJustBob msg =
  msg == "Bob"


hey : String -> String
hey remark =
  if isQuestion remark then
    "Sure."
  else if isShouting remark then
    "Whoa, chill out!"
  else if isShoutingQuestion remark then
    "Calm down, I know what I'm doing!"
  else if isJustBob remark then
    "Fine. Be that way!"
  else
    "Whatever."

