# The Book of Grades (TM)

# MAIN OBJECTIVE: Entering students grade into the gradebook
# and Retrieve grades when needed

# Provide an input of studnet name, output of all of their grades

# All of the grades for a given assignment/test (besides student's name)

class Grades
	def initialize
		@student_id = student_id
		@assignment_id = assignment_id
		@score = assignment_score
		@completed_date = completed_date
	end

end

class Students
	def initialize
		@first_name = first_name
		@last_name = last_name
	end

end

class Assignments
	def initialize
		@assignment_name = assignment_name
		@due_date = due_date
	end
end