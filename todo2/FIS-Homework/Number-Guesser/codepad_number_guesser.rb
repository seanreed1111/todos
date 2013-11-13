def number_guesser
	puts "Guess an integer between 1 and 100, inclusive:"
	guess = gets.chomp.to_i
	answer = 1 + rand(100)
	puts guess == answer ? "You guessed correctly!": "Sorry, I was thinking of the number #{answer}."
end
number_guesser
