# The Book of Grades (TM)

# MAIN OBJECTIVE: Entering students grade into the gradebook
# and Retrieve grades when needed

# Provide an input of studnet name, output of all of their grades

# All of the grades for a given assignment/test (besides student's name)

class Grades
	def initialize(student_id, assignment_id, assignment_score, completed_date)
		@student_id = student_id
		@assignment_id = assignment_id
		@score = assignment_score
		@completed_date = completed_date
	end

end

class Students
	def initialize(first_name, last_name)
		@first_name = first_name
		@last_name = last_name
	end

end

class Assignments
	def initialize(assignment_name, due_date)
		@assignment_name = assignment_name
		@due_date = due_date
	end
end



# DRIVER CODE
def initialize_program
	# Waiting for database connection
end

# What would you like to do?
# add student, pick a student, add assignment, or exit

# add student
# input: student's first name, student's last name
# output: return to the main menu

# pick a student
# input: student name
# output: saved student score
# steps: 1) pick from a list of assignments 2) enter the assignment score
# 	3) the completion date of the score 4) save the input

# add an assignment
# input: assignment's name, assignment's due date
# output: return to the main menu

# exit
# input: type 'exit'
# output: quit program









