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