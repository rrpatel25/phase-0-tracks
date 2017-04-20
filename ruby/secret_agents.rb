# Method called encrypt that takes a string as an argument
# Loop through a string
# Check each character to see if it's a space
# If not a space, then...
# Advance character 1 letter using .next

def encrypt(str)
	index = 0
	while index < str.length
		if str[index] != " "
			str[index] = str[index].next
		end
		index += 1
	end
	str
end


# Method called decrypt that takes a string as an argument
# Loop through each character of the string
# Check each character to see if it's a space
# If not a space, then...
# Modify the character to be the letter right before it

def decrypt(str)
	index = 0
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	while index < str.length
		if str[index] != " "
			letter_index = alphabet.index(str[index])
			str[index] = alphabet[letter_index - 1]
		end
		index += 1
	end
	str
end

p "Encrypted password:"
p encrypt('pass word')
p "Decrypted password:"
p decrypt(encrypt('pass word'))