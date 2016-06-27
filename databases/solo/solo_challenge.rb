# set up a --very-- basic quiz program (I'm a teacher)
# program needs to 
	#Accecpt user data, store in bd
	#Give the user a problem
	#Give the user feedback
	#Store the user's feedback
# Functionality wishlist ... 
	# to be developed....
	# Multiple problems, averages
	# Different Levels

# require gems
require 'rubygems'
require 'sqlite3'
require 'faker'

# Create a database and a tables for students and problems
quiz = SQLite3::Database.new( "quiz.db" )

#Create students table
create_students_table = <<-SQLCOMMANDS
	CREATE TABLE IF NOT EXISTS students(
	id INTEGER PRIMARY KEY,
	name VARCHAR(255),
	age INTEGER
	);
SQLCOMMANDS
quiz.execute(create_students_table)

#Create problems table
create_problems_table = <<-SQLCOMMANDS
	CREATE TABLE IF NOT EXISTS problems(
	id INTEGER PRIMARY KEY,
	category VARCHAR(255),
	problem_text VARCHAR(1000),
	response1 VARCHAR(255),
	response2 VARCHAR(255),
	response3 VARCHAR(255),
	response4 VARCHAR(255),
	correct_answer INTEGER
	);
SQLCOMMANDS
quiz.execute(create_problems_table)

#add astudent users
def add_student_user(student, age, db)
db.execute("INSERT INTO problems (name, age) VALUES ('#{student}', #{age})")
end
#test  add_student_user("ROBERTO", 17, quiz) 

#400.times do
#	add_student_user(Faker::Name.name, rand(12..21),quiz)
#end



#add a problem
def add_problem(category,problem_text, response1, response2,response3, response4, correct_answer, db)
db.execute("INSERT INTO problems (category, problem_text, response1, response2, response3, response4, correct_answer) VALUES ('#{category}', '#{problem_text}', '#{response1}', '#{response2}', '#{response3}', '#{response4}', #{correct_answer})")
end

categories = ['genetics', 'evolution', 'cells', 'systems']

#400.times do
#	add_problem(categories[rand(4)], Faker::Lorem.sentence(3),Faker::Lorem.word,Faker::Lorem.word,Faker::Lorem.word,Faker::Lorem.word, rand(1..4),quiz)
#end



#print a question
def print_question(category, problem_number, db)
problem_array = db.execute("select * from problems WHERE category='#{category}';")
p problem_array[problem_number]
end
print_question(categories[rand(4)],rand(20), quiz)


#take an answer, give feedback