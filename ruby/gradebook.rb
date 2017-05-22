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


class Grade
	attr_accessor :completion_date, 

	def initialize(student_id, assignment_id)

	end

	def display_grades

	end
end

class Student
	attr_accessor :first_name, :last_name

	def initialize(gradebook_db)
		@db = gradebook_db
	end

	def display_full_name
		self.first_name + ' ' + self.last_name
	end

	def save
		@db.execute("INSERT INTO students (first_name, last_name) VALUES (?, ?)", [first_name, last_name])
	end

	def self.display_students(gradebook_db)
		student_list = gradebook_db.execute("SELECT * FROM students")
		student_list.each do |student|
			puts "#{student['id']} - #{student['first_name']} #{student['last_name']}"
		end
	end
end

class Assignment
	attr_accessor :assignment_name, :due_date

	def initialize(gradebook_db)
		@db = gradebook_db
	end

	def save
		@db.execute("INSERT INTO assignments (assignment_name, due_date) VALUES (?, ?)", [assignment_name, due_date])
	end

	def self.display_assignments(gradebook_db)
		assignment_list = gradebook_db.execute("SELECT * FROM assignments")
		assignment_list.each do |assignment|
			puts "#{assignment['id']} - #{assignment['assignment_name']} #{assignment['due_date']}"
		end
	end
end

def initialize_program

end

def create_new_student(gradebook_db)
	new_student = Student.new(gradebook_db)
	puts "What is your student's first name?"
	new_student.first_name = gets.chomp
	puts "What is your student's last name?"
	new_student.last_name = gets.chomp
	puts "Saving your new student..."
	new_student.save
	puts "Your new student #{new_student.display_full_name} was added!"
end

def create_new_assignment(gradebook_db)
	new_assignment = Assignment.new(gradebook_db)
	puts "What is your new assignment's name?"
	new_assignment.assignment_name = gets.chomp
	puts "When is this new assignment due? (e.g., '05/25/2017')"
	new_assignment.due_date = gets.chomp
	puts "Saving your new assignment..."
	new_assignment.save
	puts "Your new assignment #{new_assignment.assignment_name}, " +
	 "set to be due on #{new_assignment.due_date.to_s}, was added!"
end

def select_student(gradebook_db)
	puts "Select the student file number you wish to work with"
	Student.display_students(gradebook_db)
	chosen_student = gets.chomp
	puts "Select the assignment file number you wish to enter"
	Assignment.display_assignments(gradebook_db)
	chosen_assignment = gets.chomp



end


# USER INTERFACE

# initialize_program
puts "Welcome back!"
loop do
	puts "What would you like to do?"
	puts "Add Student, Select a Student, Add Assignment, or Exit"
	user_response = gets.chomp
	if user_response.downcase == "exit"
		break
	else
		if user_response.downcase == "add student"
			create_new_student(db)
		elsif user_response.downcase == "select a student"
			select_student(db)
		elsif user_response.downcase == "add assignment"
			create_new_assignment(db)
		end
	end
end	
puts "Although this book has closed, their learning hasn't!"







