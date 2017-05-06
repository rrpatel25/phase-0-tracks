# module Shout
# 	def self.yell_angrily(words)
# 		words + '!!!' + ' :('
# 	end

# 	def self.yelling_happily(words)
# 		words + '!!!' + ' XD'
# 	end
# end

# # Driver Code
# p Shout.yell_angrily("hey")
# p Shout.yelling_happily("let's gooooo")


# Release 3: Convert a Standalone Module to a Mixin

module Shout
	def yell_angrily(words)
		words + '!!!' + ' :('
	end

	def yelling_happily(words)
		words + '!!!' + ' XD'
	end
end

class Coach
	include Shout
end

class Athlete
	include Shout
end


# Driver Code
coach = Coach.new
athlete = Athlete.new
p coach.yell_angrily("Get back on defense!")
p athlete.yelling_happily("I'm on it!")