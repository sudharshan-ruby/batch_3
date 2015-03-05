#!/usr/bin/env ruby

=begin
  Create a guessing number game using
  1. Random number generator
  2. Range
  3. Loops
  4. Unless...end
=end

number = rand(1..100) 
num_guesses = 0  
puts "I just picked a number from 1 to 100."
puts "Try guessing it!"

loop do
	print "What is your guess? " 
	guess = gets.chomp.to_i 
	num_guesses += 1  
	
	unless guess == number 
	message = if guess > number 
			"Too high" 
		else 
			"Too low" 
		end 
		puts message 
	else 
		puts "You got it!" 
		puts "It took you #{num_guesses} guesses."
		exit 
	end 
end
