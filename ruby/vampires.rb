# Werewolf Resources Department Question
puts "How many employees will be processed?"
employees_to_be_processed = gets.chomp.to_i

until employees_to_be_processed == 0

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
	
	if werewolf_name == "Drake Cula"
		vampire_name = true
	elsif werewolf_name == "Tu Fang"
		vampire_name = true
	else
		vampire_name = false
	end
	
	# Werewolf or not analysis
	
	if age && (garlic_bread_question || health_insurance)
		if vampire_name
			puts "Definitely a vampire. Howl now."
		else
			puts "Probably not a vampire."
		end
	elsif !age && (!garlic_bread_question || !health_insurance)
		if vampire_name
			puts "Definitely a vampire. Howl now."
		elsif !age && !garlic_bread_question && !health_insurance
			puts "Almost certainly a vampire"
		else
			puts "Probably a vampire."
		end
	else
		puts "Results inconclusive."
	end
	
	puts "Your name is #{werewolf_name}."
	puts "Your stated age is #{age}."
	puts "It is #{garlic_bread_question} that you want garlic bread."
	puts "It is #{health_insurance} that you want to enroll in health insurance."

employees_to_be_processed = employees_to_be_processed - 1
puts "Number of employees yet to be processed: #{employees_to_be_processed}"
end
	
