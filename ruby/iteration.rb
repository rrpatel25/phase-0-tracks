def status_message
	puts "I'm having a cheerful day!"
	activity = "akash"
	yield(activity)
	puts "Just kidding, it was a tiring day."
end

status_message { |activity| puts "Let's go #{activity}!" }

# Release 1
fifa = ["EPL","LaLiga","MLS","Bundesliga"]

clubs = { 
epl: "Man u",  
Laliga: "Barcelona",
MLS: "Chicago Fire",
Bundesliga: "Brayern Munich"
}

# initial .each
new_soccer = fifa.length

fifa.each do |soccer| 
  puts soccer
end 

# post .each 
fifa.each do |soccer|
puts soccer
puts new_soccer
end
# initial .each for teams

clubs.each do |teams,namu |
  puts "the name of the best team in #{teams} is #{namu}"
end

# initial .map! for array
fifa.map! do |soccer|
  puts soccer.reverse
end

# Release 2

# Method that deletes any items that meet a certain condition (array)
integers = [1, 3, 6, 20, 100]

integers.delete_if {|number| number < 5 }
puts integers

# Method that deletes any items that meet a certain condition (hash)
numbers = {
	a: 3,
	b: 5,
	c: 20,
	d: 30
}

numbers.delete_if {|letter, digit| digit < 5 }
puts numbers

# Method that filters items that do satisfy a certain condition (array)
integers = [1, 3, 6, 20, 100]

integers.select! {|number|number < 5 }
puts integers

# Method that filters items that do satisfy a certain condition (hash)
numbers = {
	a: 3,
	b: 5,
	c: 20,
	d: 30
}

p numbers.select {|letter,digit| digit < 10}

# Different method that filters items that do satisfy a certain condition (array)
integers = [1, 3, 6, 20, 100]

integers.reject! {|number|number < 5 }
puts integers

# Different method that filters items that do satisfy a certain condition (hash)
numbers = {
	a: 3,
	b: 5,
	c: 20,
	d: 30
}

p numbers.reject {|letter,digit| digit < 10}

# Method that removes items from array until condition in block evaluates to false, then stops
integers = [1, 3, 6, 20, 100]

p integers.drop_while { |number| number < 5 }
p integers

# Method that removes items from hash until condition in block evaluates to false, then stops
numbers = {
	a: 3,
	b: 5,
	c: 20,
	d: 30
}

p numbers.keep_if {|letter,digit| digit < 10}


