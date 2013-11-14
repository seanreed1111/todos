#HOMEWORK: number guesser
# Create a file called `number-guesser.rb`
 
# Project specs:
 
# Should ask the user to enter a number between 1 and 100
# Should receive input from the user
# Should tell the user if they were correct or incorrect
 
# CHALLENGE:
# Write a test to check that your file correctly tells the user if they are right or wrong.
# (NOTE: you may have to put your code in a method... 
	#use the tests and solutions you've seen to help you structure your code)
 
# SUBMISSION:
# Create a local and remote repo called 'FIS-Homework'
# Inside your local repo, create a folder called 'Number-Guesser'
# Put your `number-guesser.rb` file in there
 
# Your Repo should look like this:
 
# github username / FIS-Homework
#    |- Number-Guesser
#       |- number-guesser.rb
 
#
#
#
#
def number_guesser
	puts "Guess an integer between 1 and 100, inclusive:"
	guess = gets.chomp.to_i
	answer = 1 + rand(100)
	correct = guess == answer
	 puts correct ? "You guessed correctly!": "Sorry, I was thinking of the number #{answer}."
	correct
end

number_guesser