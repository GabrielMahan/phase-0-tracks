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
	category VARCHAR(200),
	is_correct INTEGER,
	problem_number INTEGER,
	student_id INTEGER,
	FOREIGN KEY (student_id) REFERENCES students(id),
	FOREIGN KEY (problem_number) REFERENCES problems(id)
	);
SQLCOMMANDS
quiz.execute(create_student_response_table)





#add astudent users
def add_student_user(student, age, db)
db.execute("INSERT INTO students (name, age) VALUES ('#{student}', #{age})")
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

#50.times do
#	add_problem(categories[rand(0..3)], Faker::Lorem.sentence(3),Faker::Lorem.word,Faker::Lorem.word,Faker::Lorem.word,Faker::Lorem.word, rand(1..4),quiz)
#end


#stores user response for a question number
def store_data(database, user, data)
	category = data[0]
	problem_number = [1]
	is_correct = data[2]

	p category
	p problem_number
	p is_correct

	# cat, is_c, #

	database.execute("INSERT INTO student_response (category, is_correct, problem_number, student_id) VALUES ('#{category}', '#{is_correct}', '#{problem_number}', '#{user}')")
end


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
		is_correct = 1
	else
		is_correct = 0
	end
	
	return_data = [category, problem_array[0][0], is_correct ]
	p return_data
	return_data

end

print_question(categories[rand(4)], 3, quiz)


# take a user 



#cycle through multiple problems

counter = 0
number_of_problems_to_ask = 5
p counter

number_of_problems_to_ask.times do
	puts 'hello'
	question_data = print_question(categories[rand(4)], rand(3), quiz)

	# here I've give a random user for the second argument, but it can be specifiec
	store_data(quiz, rand(1..100),question_data)
end

p counter





