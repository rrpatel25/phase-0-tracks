# Greet the user and ask following questions:
# What is the client's name?
# Age?
# No. of children?
# Decor theme?
# True or False: Old-school?
# True or False: Pets?
# Max budget amount

def set_username
	puts "What is your name?"
	application_details[:username] = gets.chomp
end

application_details = {
	username: "", 
	age: "", 
	children: "", 
	theme: "", 
	vintage: "", 
	pets: "", 
	budget: "",
}

puts "Welcome to the DesignLine Program!"
set_username

puts "How old are you?"
application_details[:age] = gets.to_i

puts "How many children do you have?"
application_details[:children] = gets.to_i

puts "What sort of decor theme did you have in mind?"
application_details[:theme] = gets.chomp

puts "Would you consider yourself to be...vintage? (y/n)"
vintage = gets.chomp

# Assign correct boolean values based on answer
if vintage == "y"
	application_details[:vintage] = true
else
	application_details[:vintage] = false
end

puts "Do you have any pets? (y/n)"
pets = gets.chomp

# Assign correct boolean values based on answer
if pets == "y"
	application_details[:pets] = true
else
	application_details[:pets] = false
end

puts "What is the maximum amount you are willing to spend?"
application_details[:budget] = gets.to_i

# Printing the hash back for corrections

puts "Let's take a look at what you said: #{application_details}"
puts "Would you like to make any changes? If so, enter in the item name of " +
	"what you wish to change, otherwise enter \"none\"!"
change_response = gets.chomp

# Making Changes:
# If the user enters a variable name,
# It changes the corresponding key value
# Or if the user says "none"
# The program ends

username = 
age = application_details[:age]
children = application_details[:children]
theme = application_details[:theme]
vintage = 
pets = application_details[:pets]
budget = application_details[:budget]

if change_response == "username"
	set_username
elsif change_response
end


	


puts "Here is a look at your final submission: #{application_details}"
puts "Thank you for checking out DesignLine! A representative will get back to you!"



