require_relative 'game_class'

describe Word_guess do 
	let (:word) { Word_guess.new(@word) }
	it "stores the secret word given on initialization" do
    expect(word.create_word_array).to eq [@word]
  end

  it "checks the word array against the guess word array for correct letters" do
    word.check_array(@guess.chars)
    expect(word.check_array).to eq [@guess]
  end

  it "checks the guess to see if the guess is the correct word" do
    word.create_word_array(@word)
    expect(word.create_word_array).to eq [@word.chars]
  end
end