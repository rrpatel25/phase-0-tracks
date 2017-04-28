# Attempting a Tricky Algorithm

# Ask for spy's real name
# Swap the first and last name order
# Split names into individual letters
# Change all of the vowels to the next vowel in 'a,e,i,o,u'
# Chanage all of the consonants to next consonant
# Join letters back together
# Upcase first letter of each name
# Prints back new spy name!


# Main Method
def fake_name_creator(name_input)
	changed_name = []
	reverse_name = reverse_name(name_input)
	reverse_name.each do |name_part|
		name_part = rotate_vowels(name_part)
		name_part = rotate_consonants(name_part)
		changed_name << name_part
	end
	changed_name.join(' ')
end

# Name-order reverser (method)
def reverse_name(input)
	input.split(' ').reverse
end

# Vowel-changing method (assuming input is always lowercase)
def rotate_vowels(input)
	output = ''
	vowels = ['a', 'e', 'i', 'o', 'u']
	rotated_vowels = vowels.rotate 
	input.split('').each do |letter|
		vowels.each_with_index do |vowel,i|
			if letter == vowel
				letter = rotated_vowels[i]
				break
			end
		end
		output += letter
	end
	output
end

# Consonant-changing method (assuming input is always lowercase)
def rotate_consonants(input)
	output = ''
	consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']
	rotated_consonants = consonants.rotate
	input.split('').each do |letter|
		consonants.each_with_index do |consonant,i|
			if letter == consonant
				letter = rotated_consonants[i]
				break
			end
		end
		output += letter
	end
	output
end

# Upcasing first letter of each name part
def name_upcaser(input)

end

puts 'So...what is your real name? Like really REAL name?'
real_name = gets.chomp.downcase

p fake_name_creator(real_name)