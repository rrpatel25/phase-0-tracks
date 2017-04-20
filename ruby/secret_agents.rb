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

p encrypt("pass word")