# set up a --very-- basic quiz program (I'm a teacher)
# program needs to 
	#Give the user a problem
	#Accecpt user response, see if it's correct
	#Store the user's feedback
# Functionality wishlist ... to be developed....
	# cycle through multiple problems
	# give the user data like averages
	# have a fancy UI

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



#Student_response table
create_student_response_table = <<-SQLCOMMANDS
	CREATE TABLE IF NOT EXISTS student_response(
	id INTEGER PRIMARY KEY,
	category INTEGER,
	is_correct INTEGER,
	problem_number INTEGER,
	
	);
SQLCOMMANDS
quiz.execute(create_student_response_table)





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



#print a question and take an answer
def print_question(category, problem_number, db)

	#retrieves the problem
	problem_array = db.execute("select * from problems WHERE category='#{category}';")
	correct_answer = problem_array[problem_number][7]
	#p problem_array[problem_number]

	#prints the problem
	puts "Category: #{category} Problem; #{problem_number}\n Question: #{problem_array[problem_number][2]}\n"
	puts "1: #{problem_array[problem_number][3]} \n2: #{problem_array[problem_number][4]} \n3: #{problem_array[problem_number][5]} \n4: #{problem_array[problem_number][6]}"

	#gets a response
	user_response = 0
	until (user_response == 1)||(user_response == 2)||(user_response == 3) ||(user_response == 4) do
		puts "Response:"
		user_response = gets.chomp.to_i
	end

	#sets true or false
	is_correct = nil
	if user_response == correct_answer
		is_correct = true
	else
		is_correct = false
	end
	#p is_correct

end
print_question(categories[rand(4)], 3, quiz)


#cycle through multiple problems

#stores user response for a question number

#def store_result