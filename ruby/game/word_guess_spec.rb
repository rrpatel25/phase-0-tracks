require_relative 'word_guess'

describe WordGuess do
  let(:game) { WordGuess.new("password") }

  it "converts the word answer into an array of letters" do
    expect(game.word_answer).to eq ["p", "a", "s", "s", "w", "o", "r", "d"]
  end

  # it "check to see if the guessed letter matches a letter from the word answer" do
  #   list.add_item("mop")
  #   expect(game.check_letter("p")).to eq "p _ _ _ _ _ _ _"
  # end

  # it "shows information on user's progress so far" do
  #   list.delete_item("do the dishes")
  #   expect(list.get_items).to eq ["mow the lawn"]
  # end

  # it "retrieves an item by index" do
  #   expect(list.get_item(0)).to eq "do the dishes"
  # end
end