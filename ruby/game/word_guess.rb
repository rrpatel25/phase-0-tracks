# Release 1: Pseudocode for designing word-guess Game class

# Begin by creating a word-class game
# Within it, there should be characteristics that include:
# 	secret word input, guess count, if the game is over, letters guessed,
# 	and current progress on word

# Method/behavior on initialization
# input: the Player 1's word answer for the game
# stores word to appropriate instance variable, as well as holding
# 	the other attribute defaults from lines 5-6
# output: N/A

# Method/behavior to convert the user's input to array of letters
# input: string of letters
# steps: take the input and convert an array of individual letters
# output: array of letters

# Method/behavior to check if guessed letter matches a letter in the array of letters
# input: letter
# steps: 1. see if the array includes the guessed letter
#        2. move the guessed letter into letters guessed array
#        3. update current progress on word
# output: current progress on word

# Method/behavior to show current progress in game
# input: N/A
# steps: N/A
# output: should show the current progress on word, letters guessed, and guess count


# User Interface
# Player 1 (P1) enters a word
# Player 2 (P2) guesses a letter
# Can see progress and guesses made
# Shows win/loss result at the end



####### Release 2: Building the game #######

class WordGuess
	# attr_reader :

	def initialize(users_word)
		@word_answer = users_word
		@guess_count = 0
		@is_over = false
		@letters_guessed = []
	end

	def word_answer_list
		@word_answer.split('')
	end

	def has_letter?(guessed_letter)
		@letters_guessed << guessed_letter
		word_answer_list.include?(guessed_letter)
	end

	def player_progress
		hidden_letters = word_answer_list - @letters_guessed
		progress = word_answer_list.map do |letter|
			if hidden_letters.include?(letter)
				"_"
			else
				letter
			end
		end
		progress.join(' ')
	end

	def about

	end
end

# g = WordGuess.new("password")
# p g.player_progress












