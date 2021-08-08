-- File: hw01.lua
-- Created by: Michael Napoli
-- Created on: 7/20/2021

math.randomseed(os.time())

-- Problem 1
function user_guess()
  val = math.random(100)

  print("First guess: ")
  guess = io.read("*n")

  while val ~= guess do
    if guess > val then
      print("Too high.")
    elseif guess < val then
      print("Too low.")
    end

    print("New guess: ")
    guess = tonumber(io.read("*n"))
  end

  print("Correct!")
end

-- test case
-- user_guess()


-- Problem 2
function comp_guess()
  count = 1
  l = 0
  h = 100
  guess = 50

  while input ~= 'C' and input ~= 'c' do
    print("Guess:", guess)

    print("Is the guess correct?")
    input = io.read(1, "*l")

    if input == 'L' or input == 'l' then
      l = guess
    elseif input == 'H' or input == 'h' then
      h = guess
    end

    guess = math.floor((l + h) / 2)
    count = count + 1
  end

  print("Correct! Guesses needed: ", count)
end

-- test case
comp_guess()
