module TwoFer exposing (twoFer)

twoFer : Maybe String -> String
twoFer name =
  "One for " ++ user name ++ ", one for me."

user : Maybe String -> String
user name =
  Maybe.withDefault "you" name
