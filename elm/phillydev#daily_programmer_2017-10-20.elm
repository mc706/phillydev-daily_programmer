{- Given an array of integers, return indices of the two numbers such that they add up to a specific target.
   You may assume that any solution will do, and you may not use the same element twice.

   ```
   returnNumbers([3, 7, 8, 11], 18)
   => 7, 11
   returnNumbers([5, 4, 9, 44], 14)
   => 5, 9
   returnNumbers([2, 4, 7, 5], 9)
   => 5, 4
   or
   => 2, 7
   ```
-}


module Main exposing (returnNumbers)


returnNumbers : List Int -> Int -> Maybe ( Int, Int )
returnNumbers array target =
    array
        |> List.filterMap
            (\n ->
                if List.member (target - n) array then
                    Just ( n, target - n )
                else
                    Nothing
            )
        |> List.head
