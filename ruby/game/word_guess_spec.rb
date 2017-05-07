require_relative 'word_guess'

describe WordGuess do
  let(:game) { WordGuess.new("password") }

  it "assures the number of guesses available is set correctly" do
    expect(game.available_guesses).to eq 8
  end

  it "converts the word answer into an array of letters" do
    expect(game.word_answer_list).to eq ["p", "a", "s", "s", "w", "o", "r", "d"]
  end

  it "checks to see if the guessed letter matches a letter from the word answer" do
    expect(game.has_letter?("p")).to eq true
  end

  it "updates the number of guesses available" do
    game.has_letter?("p")
    expect(game.available_guesses).to eq 7
  end  

  it "shows user's progress so far in terms of letters correctly guessed" do
    game.has_letter?("p")
    expect(game.player_progress).to eq "p _ _ _ _ _ _ _"
  end

  it "does not penalize the player for a repeated guess" do
    game.has_letter?("p")
    game.has_letter?("p")
    expect(game.available_guesses).to eq 7
  end

  it "displays a congratulatory message if the player wins" do
    game.has_letter?("p")
    game.has_letter?("a")
    game.has_letter?("s")
    game.has_letter?("s")
    game.has_letter?("w")
    game.has_letter?("o")
    game.has_letter?("r")
    game.has_letter?("d")
    expect(game.is_over).to eq "Congratulations, YOU GUESSED THE SECRET WORD!"
  end

  # it "displays a taunting message if the player loses"
  # end
end