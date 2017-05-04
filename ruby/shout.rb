module Shout
	def self.yell_angrily(words)
		words + '!!!' + ' :('
	end

	def self.yelling_happily(words)
		words + '!!!' + ' XD'
	end
end

# Driver Code
p Shout.yell_angrily("hey")
p Shout.yelling_happily("let's gooooo")