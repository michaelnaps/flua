-- File: hw01.lua
-- Created by: Michael Napoli
-- Created on: 7/20/2021

-- test function syntax for simple example
function test_func(x, y)
   return x * y
end

-- test case
-- print(test_func(2, 3))


-- Problem 1
function guess_number(val)
   print("First guess: ")
   guess = io.read("*n")

   while val ~= guess do
      print("New guess: ")
      guess = io.read("*n")

      if guess > val then
         print("Too high.")
      elseif guess < val then
         print("Too low.")
      end

      print("Correct!")
   end
end

-- test case
guess_number(10)
