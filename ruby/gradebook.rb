# The Book of Grades (TM)

# MAIN OBJECTIVE: Entering students grade into the gradebook
# and Retrieve grades when needed

# Provide an input of studnet name, output of all of their grades

# All of the grades for a given assignment/test (besides student's name)

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

require 'sqlite3'
require 'faker'

# create sqlite database
db = SQLite3::Database.new("gradebook.db")
db.results_as_hash = true

# create_grades_table = <<-SQL
# 	CREATE TABLE IF NOT EXISTS grades(
# 	id INTEGER PRIMARY KEY,


# SQL

create_students_table = <<-SQL
	CREATE TABLE IF NOT EXISTS students(
	id INTEGER PRIMARY KEY,
	first_name VARCHAR(255),
	last_name VARCHAR(255)
	)
SQL

create_assignments_table = <<-SQL
	CREATE TABLE IF NOT EXISTS assignments(
	id INTEGER PRIMARY KEY,
	assignment_name VARCHAR(255),
	due_date DATE
	)
SQL

db.execute(create_students_table)
puts "Creating students table"
db.execute(create_assignments_table)
puts "Creating assignment table"


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

	def save
		db.execute("INSERT INTO students (first_name, last_name) VALUES (?, ?)", [first_name, last_name])
	end
end

class Assignments
	attr_accessor :assignment_name, :due_date

	# def initialize
	# 	@assignment_name
	# 	@due_date
	# end

	def save
	end
end

def initialize_program

end

def create_new_student
	new_student = Students.new
	puts "What is your student's first name?"
	new_student.first_name = gets.chomp
	puts "What is your student's last name?"
	new_student.last_name = gets.chomp
	puts "Saving your new student..."
	new_student.save
	puts "Your new student #{new_student.display_full_name} was added!"
end

def create_new_assignment
	new_assignment = Assignments.new
	puts "What is your new assignment's name?"
	new_assignment.assignment_name = gets.chomp
	puts "When is this new assignment due? (e.g., '05/25/2017')"
	new_assignment.due_date = gets.chomp
	puts "Saving your new assignment..."
	new_assignment.save
	puts "Your new assignment #{new_assignment.assignment_name}, " +
	 "set to be due on #{new_assignment.due_date.to_s}, was added!"
end

def pick_student

end


# USER INTERFACE

# initialize_program
puts "Welcome back!"
loop do
	puts "What would you like to do?"
	puts "Add Student, Pick a Student, Add Assignment, or Exit"
	user_response = gets.chomp
	if user_response.downcase == "exit"
		break
	else
		if user_response.downcase == "add student"
			create_new_student
		elsif user_response.downcase == "pick a student"
			# pick student method
		elsif user_response.downcase == "add assignment"
			create_new_assignment
		end
	end
end	
puts "Even though this book closed, their learning hasn't!"







