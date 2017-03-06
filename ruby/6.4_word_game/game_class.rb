=begin
1. Design a way to have a user input a word for another person to guess.
2. Create a game class that contains all the methods for the game
3. Initialize a new game instance and hide the input from the guesser
4. Tell the guesser how many guesses they have at the beginning
5. Set up a method to check the if a word has already been entered so the guesser is not penalized for the re-entry
6. 
=end

#Game Class 

class Word_guess
  
  
  def Initialize
    @guesses_left = 0
    @is_over = false
  end
  
  def create_word_array(word)
    @word.chars
  end
  
  def check_array(word)
    until @word.chars == @guess.chars
    if word == @word
      @is_over = true
    else
      false
    end
  end
end

# User Interface

puts "What is the word you want to have the other user guess?"
  @word = gets.chomp
  
puts "What do you think the secret word is? The secret word has #{@word.length} letters. You have 10 guesses."
  @guess = gets.chomp
  
while @word != guess
  puts "Wrong! try again. You have #{@guess_count} guesses left."
    guess = gets.chomp
  if guess_count == 10 
    puts "Fail! You need to expand your vocabulary. The secret word is #{@word}."
  elsif @word == guess
    puts "Congratulations! You are really smart."
  end
end