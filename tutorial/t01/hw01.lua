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
function user_guess(val)
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
user_guess(10)


-- Problem 2
function comp_guess()
   guess = 50
   while input ~= 'C' do
      print("Guess:", guess)
      print("Is the guess correct?")
      input = io.read(1)

      if input == "H" then
         guess = guess / 2
      elseif input == "L" then
         guess = guess + 5
      end
   end
end

-- test case
comp_guess()
