# require gems
require 'rubygems'
require 'sqlite3'
require 'faker'

# Create a database and a tables for students and problems
students = SQLite3::Database.new( "students.db" )

#Create students table
create_students_table = <<-SQLCOMMANDS
	CREATE TABLE IF NOT EXISTS students(
	id INTEGER PRIMARY KEY,
	name VARCHAR(255),
	grade integer, 
	graduation_in_doubt BOOLEAN,
	FOREIGN KEY (grade) REFERENCES grades 
	);
SQLCOMMANDS

#create grades table
create_grades_table = <<-SQLCOMMANDS
	CREATE TABLE IF NOT EXISTS grades(
	id INTEGER PRIMARY KEY,
	grade VARCHAR(255)
	);
SQLCOMMANDS


students.execute(create_grades_table)
students.execute(create_students_table)
students.execute("INSERT INTO grades (grade) VALUES ('freshman'),('sophomore'),('junior'),('senior');")

100.times do 
	name = Faker::Name.name
	grade = rand(1..4)
	students.execute("INSERT INTO students (name, grade, graduation_in_doubt) VALUES ('#{name}',#{grade},'TRUE');")
end