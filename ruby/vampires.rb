# Interview with the Vampire

puts "What is your name?"
werewolf_name = gets.chomp
puts "How old are you?"
age = gets.chomp.to_i
puts "Oh really? So in what year were you born?"
birth_year = gets.chomp.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
garlic_bread_question = gets.chomp
puts "Would you like to enroll in the company's health insurance? (y/n)"
health_insurance = gets.chomp

if (2017 - birth_year) != age.to_i
	age = false
else
	age = true
end

if garlic_bread_question == "y"
	garlic_bread_question = true
else 
	garlic_bread_question = false
end

if health_insurance == "y"
	health_insurance = true
else
	health_insurance = false
end

	puts age
	puts garlic_bread_question
	puts health_insurance
