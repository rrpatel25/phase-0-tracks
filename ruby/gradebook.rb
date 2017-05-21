# The Book of Grades (TM)

# MAIN OBJECTIVE: Entering students grade into the gradebook
# and Retrieve grades when needed

# Provide an input of studnet name, output of all of their grades

# All of the grades for a given assignment/test (besides student's name)

class Grades

	# def initialize
	# 	@student_id = student_id
	# 	@assignment_id = assignment_id
	# 	@score = assignment_score
	# 	@completed_date = completed_date
	# end
end

class Students
	attr_accessor :first_name, :last_name

	# def initialize
	# 	@first_name
	# 	@last_name
	# end
	def display_full_name
		self.first_name + ' ' + self.last_name
	end
end

class Assignments
	attr_accessor :assignment_name, :due_date

	# def initialize
	# 	@assignment_name
	# 	@due_date
	# end
end

def create_new_student
	new_student = Students.new
	puts "What is your student's first name?"
	new_student.first_name = gets.chomp
	puts "What is your student's last name?"
	new_student.last_name = gets.chomp
	puts "Saving your new student..."
	new_student.save
	puts "New student #{new_student.display_full_name} was added!"
end


# USER INTERFACE
def initialize_program
	# Waiting for database connection
end

puts "Welcome back!"
puts "What would you like to do?"
puts "Add Student, Pick a Student, Add Assignment, or Exit"
user_response = gets.chomp

if user_response.downcase == "add student"
	create_new_student
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









