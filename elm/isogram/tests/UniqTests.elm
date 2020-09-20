module UniqTests exposing (tests)

import Isogram exposing (uniq)
import Expect
import Test exposing (..)

tests : Test
tests =
  describe "uniq"
    [ test "Ruby-esque uniq" <|
      \() ->
        Expect.equal ['a', 'c', 'b', 'e', 'd'] <| uniq (String.toList "acbedeca")
    ]
