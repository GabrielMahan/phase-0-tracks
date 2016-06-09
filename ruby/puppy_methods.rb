class Puppy
	def fetch(toy)
		puts "I brought back the #{toy}!"
		toy
	end
	def speak(woofer)
		woofer.to_i.times {puts "woof"}
	end
	def roll_over
		puts "**rolls over**"
	end
	def age_converter(years)
		dog_age = years*7
		#puts dog_age
		dog_age
	end
	def bark_crasher
		puts "#{1000.times {puts "bark"}} "
	end
	#well that's cool--runs every time before the method
	def initialize
		puts "Initializing new puppy instance ..."
	end
end

class Dog_trainer
	def snuggle
		"puppy snuggle"
	end
	def nudge
		"nudge"
	end
	def puppy_chomp
		"puppy chomp"
	end
	def initialize
		puts "preparing to puppy snuggle"
	end
end

#needs the .new to initalize an instance....
#If we wanted, however, we could, in line 17, have it read
#def fetch.self(toy) to make it a "class method"
#as written, it's an "instance method"

#Puppy.new.fetch('rope')
#Puppy.new.speak(4)
#Puppy.new.roll_over
#Puppy.new.age_converter(15)
#Puppy.new.bark_crasher

trainer_log = []
50.times {trainer_log << Dog_trainer.new.snuggle}
trainer_log.each {|value| value << (" #{Dog_trainer.new.nudge}" + " #{Dog_trainer.new.puppy_chomp}") }
p trainer_log


