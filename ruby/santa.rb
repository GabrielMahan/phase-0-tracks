class Santa
	attr_accessor :gender, :age, :ethnicity

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts  "Ho, ho, ho! Haaaappy holidays!" 
	end
	
	def eat_milk_and_cookies(cookie)
		puts "that was one damn good #{cookie}!!!"
	end
	
	def celebrate_birthday
		@age += 1
	end
	
	def get_mad_at(name)
		@reindeer_ranking.delete(name)
		@reindeer_ranking << name
		p @reindeer_ranking
		@reindeer_ranking
	end
	def gender_setter=(gender)
		@gender = gender
	end



end

santas = []
#santas << Santa.new("agender", "black")
#santas << Santa.new("female", "Latino")
#santas << Santa.new("bigender", "white")
#santas << Santa.new("male", "Japanese")
#santas << Santa.new("female", "prefer not to say")
#santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
#santas << Santa.new("N/A", "N/A")


example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

new_santa = Santa.new("male","black")
new_santa.get_mad_at("Dasher")
new_santa.gender_setter= "the big bad wolf"
new_santa.celebrate_birthday
new_santa.age
new_santa.gender
p santas

new_santa = nil
1000.times do 
	new_santa = Santa.new(example_genders.sample, example_ethnicities.sample)
	new_santa.age = rand(140)
	p new_santa.age 
	p new_santa.gender
	p new_santa.ethnicity
end

