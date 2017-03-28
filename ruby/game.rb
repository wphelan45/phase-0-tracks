=begin
GOAL: Write a class that will run a word guessing game
1. User 1 will enter a word for User 2 to guess
2. User 2 will have 10 guesses to find the word
3. User 2 can guess individual letters or the full word but, both count against the 10 guesses
4. Post a message indicating success or failure of User 2's guesses

GOAL: Create Driver Code that will run the game class until User 2 guesses the secret word or 10 guess limit is reached
1. Prompt User 1 to enter a secret word for User 2 to guess
	-Count the letters in the secret word and tell User 2 how many letters are in the word
2. Prompt User 2 to guess the secret word
	-Prompt User 2 to guess until the secret word has been guessed or 10 guesses have elapsed
	-If User 2 guesses a letter correctly print that letter in its correct place
3. Figure out the necessary variables, loops and data structures to complete this

GOAL: Create an rspec file that tests the game class/methods
1. Write an rspec file that tests for guess limit, letters filling their position, and guessing the secret word correctly.
2. What portion of code should I keep for this portion? (Idt I need the driver code?)
=end

class Word_game
	attr_accessor :secret_word, :guess_count, :guess_word
	attr_reader :blank_array

	def initialize(word)
		@secret_word = word
		@secret_word_array = @secret_word.split(//)
		@blank_array = []
		@secret_word_array.length.times do 
			@blank_array << "_"
		end
		@guess_count = 10
		@guess_storage_array = []
	end

	def check_array
		if  @guess_storage_array == @secret_word_array
			@game_over = true
		elsif @guess_storage_array.index == @secret_word_array.index
			@game_over = false
			@guess_storage_array << @secret_word[letter]
		else
			@game_over = false
		end
	end
end


puts "Welcome to the word guessing game!"
puts "What is the secret word?"
	secret_word = gets.chomp
	game = Word_game.new(secret_word)

puts "Player 2, you're up! Try to guess the secret word in 10 guesses."
	guess_word = ''
	guess_count = 10
	game_over = false

until guess_count == 0
	guess_word = gets.chomp
	if guess_word.split(//) != game.check_array
		puts "Good job! You guessed the secret word."
		game_over = true
	elsif guess_word.split(//) == game.check_array
		puts "Nice! You guessed a letter correctly. You have #{guess_count} guesses left."
		game_over = false
	else
		puts "Guess again! You have #{guess_count} guesses left."
		game_over = false
	end
	guess_count -= 1
end

puts game

=begin 
Checklist:
-Guess countdown works
-Initialize works
-

Not working:
-Checking secret word array vs. guess word array
-If/else statement inside until loop 
=end