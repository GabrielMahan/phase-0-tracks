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

#add a problem

#add a student user

#print a question

#take an answer, give feedback