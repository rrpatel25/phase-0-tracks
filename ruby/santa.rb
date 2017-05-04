class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender

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

	def celebrate_birthday
		@age + 1
	end

	def get_mad_at(reindeer_name)
		@reindeer_ranking.delete(reindeer_name)
		@reindeer_ranking.insert(-1, reindeer_name)
	end

	# def gender=(new_gender)
	# 	@gender = new_gender
	# end

	# def age
	# 	@age
	# end

	# def ethnicity
	# 	@ethnicity
	# end
end

santa = Santa.new("Male", "Canadian")
# p santa.speak
# p santa.eat_milk_and_cookies("chocolate chip")
# p santa.about

# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", 
# 	"prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end

# p santas

p santa.celebrate_birthday
p santa.get_mad_at("Dasher")
santa.gender = "gender fluid"
p santa
p santa.age
p santa.ethnicity
p santa.about












