require_relative 'word_guess'

describe WordGuess do
  let(:game) { WordGuess.new("password") }

  it "converts the word answer into an array of letters" do
    expect(game.word_answer_list).to eq ["p", "a", "s", "s", "w", "o", "r", "d"]
  end

  it "checks to see if the guessed letter matches a letter from the word answer" do
    expect(game.check_letter("p")).to eq true
  end

  it "shows user's progress so far in terms of letters correctly guessed" do
    # list.delete_item("do the dishes")
    expect(game.player_progress).to eq "p _ _ _ _ _ _ _"
  end

  # it "retrieves an item by index" do
  #   expect(list.get_item(0)).to eq "do the dishes"
  # end
end