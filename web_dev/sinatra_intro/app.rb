# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# write a GET route that displays an address
get '/contact' do
  "1033 W Van Buren St, Chicago, IL 60607"
end

# write a GET route that says great job to a person's name (query parameter not route)
get '/great_job' do
  name = params[:name]
  if name
    "Great job, #{name}!"
  else
    "Great job!"
  end
end

# write a route that uses route parameters to add two numbers and responds with result
get '/:first_number/+/:second_number' do
  (params[:first_number].to_i + params[:second_number].to_i).to_s
end

# a route that allows the user to search the database in some way
get '/students/:campus' do
  students = db.execute("SELECT * FROM students WHERE campus=?", [params[:campus]])
  response = ""
  students.each do |student|
    response << "#{student['age']} year old #{student['name']} is found in this location.<br>"
  end
  response
end





