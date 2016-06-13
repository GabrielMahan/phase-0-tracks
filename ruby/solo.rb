
####Pseudo code ####
#make an ideal dog class, with breed, name, age, and personality
#behavior methods... wag tail, get older, bark 

class Ideal_dog
	attr_accessor :breed, :age, :personality, :coat, :name
	#attr_reader :name,

	def initialize(name)	
		@name = name
	end

	def wag_tail
		puts "wags tail"
	end

	def get_older
		@age += 7
	end

	def bark(times_to_bark)
		times_to_bark.times {puts "bark"}
	end
end

puts "welcome to the dog wish list \n here you will list potential dogs that you would like to play with"
user_response = nil
dog_log = []
until user_response == "done" do 
	puts "type any key to continue on to dog creation \n type 'done' when finsihed"
	user_response = gets.chomp.downcase
	if user_response == "done"
		user_response
	else
		dog_info = {}

		puts "what is the name of your dog???"
		dog_name = gets.chomp
		dog = Ideal_dog.new(dog_name)

		puts "how old is your dog???"
		dog.age = gets.chomp
		dog_info["age"] = dog.age

		puts "what is your dog's personality like??"
		dog.personality = gets.chomp
		dog_info["personality"] = dog.personality

		puts "what is your dog's coat? dappled, brindled, etc?"
		dog.coat = gets.chomp
		dog_info["coat"] = dog.coat

		puts "what is the breed of your dog?"
		dog.breed = gets.chomp
		dog_info["breed"] = dog.breed


		dog_log << [dog.name, dog_info]
	end
end

dog_log.each do |value|
	puts "#{value[0]} has the following traits \n"
	value[1].each {|key, trait| puts "#{key} is #{trait} \n" }
	puts "\n \n"
end
