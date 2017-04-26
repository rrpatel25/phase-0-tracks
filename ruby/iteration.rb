def status_message
	puts "I'm having a cheerful day!"
	activity = "akash"
	yield(activity)
	puts "Just kidding, it was a tiring day."
end

status_message { |activity| puts "Let's go #{activity}!" }