# Method called encrypt that takes a string as an argument
# Loop through a string
# Check each character to see if it's a space
# If not a space, then...
# Advance character 1 letter using .next

def encrypt(str)
	index = 0
	while index < str.length
		if str[index] == 'z'
			str[index] = 'a'
		elsif str[index] != " "
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

# Driver Code

# Psuedo code - Ask secret agent "Do you want to decrypt or encrypt a password?"
# get user input for encrypt or decrypt
# Ask for password
# get user input for password
# Run password through specified operation (encrypt or decrypt)
# Print result and exit

puts "Do you want to decrypt or encrypt a password?"
encrypt_or_decrypt = gets.chomp.downcase
puts "Enter password"
pword = gets.chomp

if encrypt_or_decrypt == "encrypt"
	puts "Encrypted password is #{encrypt(pword)}"
elsif encrypt_or_decrypt == "decrypt"
	puts "Decrypted password is #{decrypt(pword)}"
else
	puts "I don't know how to #{encrypt_or_decrypt}"
end

puts "Okay...bye!"


# p "Encrypted password abc should be bcd:"
#  p encrypt('abc')
 
#  p "Encrypted password zed should be afe:"
#  p encrypt('zed')
 
#  p "Decrypted password bcd should be abc:"
#  p decrypt(encrypt('bcd'))

#  p "Decrypted afe should be zed:"
#  p decrypt('afe')

# #encrypt("abc") should return "bcd"
# #encrypt("zed") should return "afe"
# #decrypt("bcd") should return "abc"
# #decrypt("afe") should return "zed"

# # Decrypting an encryption (nested method call), should be swordfish. 
# p "Decrypting an encryption (nested method call), should be swordfish:"
# p decrypt(encrypt("swordfish"))
