require_relative 'word_guess'

describe WordGuess do
  let(:game) { WordGuess.new("password") }

  it "converts the word answer into an array of letters" do
    expect(game.word_answer).to eq ["p", "a", "s", "s", "w", "o", "r", "d"]
  end

  # it "adds an item to the list" do
  #   list.add_item("mop")
  #   expect(list.get_items).to eq ["do the dishes", "mow the lawn", "mop"]
  # end

  # it "deletes an item" do
  #   list.delete_item("do the dishes")
  #   expect(list.get_items).to eq ["mow the lawn"]
  # end

  # it "retrieves an item by index" do
  #   expect(list.get_item(0)).to eq "do the dishes"
  # end
end