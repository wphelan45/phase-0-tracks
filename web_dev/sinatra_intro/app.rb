# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET / -> Performs a get http call on a backslash. Always return a string
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

get '/contact' do
  "123 Oriole Ave Cincinnatti, OH 45056"
end

get '/great_job' do
  name = params[:name]
  if  name
    "Good job, #{name}!"
  else
    "Good job!"
  end
end

get '/add/:num1/:num2' do
  "#{params[:num1].to_i + params[:num2].to_i}"
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
    response << "Campus: #{student['campus']}<br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

get '/students/:location' do
  student_location = db.execute("SELECT * FROM students WHERE campus=?", [params[:campus]])[2]
  student_location.to_s
end

#Attempt to do optional release: Did not pass
get '/students/parameter' do
  parameter
  if parameter=id
    student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
    student.to_s
  elsif parameter=name
    student = db.execute("SELECT * FROM students WHERE id=?", [params[:name]])[1]
    student.to_s
  elsif parameter=age
    student = db.execute("SELECT * FROM students WHERE id=?", [params[:age]])[2]
    student.to_s
  elsif parameter=campus
    student = db.execute("SELECT * FROM students WHERE id=?", [params[:campus]])[3]
    student.to_s
  end 
end