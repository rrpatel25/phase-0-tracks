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

# Converting answers to boolean values

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

# Werewolf or not analysis

if age && (garlic_bread_question || health_insurance)
	puts "Probably not a vampire."
elsif !age && (!garlic_bread_question || !health_insurance)
	puts "Probably a vampire."
elsif !age && (!garlic_bread_question && !health_insurance)
	puts "Almost certainly a vampire."
elsif werewolf_name == "Drake Cula" || "Tu Fang"
	puts "Definitely a vampire. Howl now."
else
	puts "Results inconclusive."
end

puts "Your name is #{werewolf_name}."
puts "Your age is #{age}."
puts "It is #{garlic_bread_question} that you want garlic bread."
puts "It is #{health_insurance} that you want to enroll in health insurance."

	
