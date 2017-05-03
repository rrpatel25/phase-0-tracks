class Santa
	def initialize(gender, ethnicity)
		puts 'Initializing Santa instance...'
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", 
			"Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts 'Ho, ho, ho! Haaaappy holidays!'
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
	end

	def about
		puts "Gender: #{@gender}"
		puts "Ethnicity: #{@ethnicity}"
		puts "Reindeer_ranking: #{@reindeer_ranking}"
		puts "Age: #{@age}"
	end
end

santa = Santa.new("Male", "Canadian")
p santa.speak
p santa.eat_milk_and_cookies("chocolate chip")
p santa.about

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", 
	"prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

p santas