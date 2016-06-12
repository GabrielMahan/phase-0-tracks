#Puppy class notes
#breed ---------
# Bernese Mountain dog

#Characteristics------
#soft fur
#pink tongue
#personable temperament
#high snuggleability

#Interests ---------
#cuddling
#gnawing on furniture
#frollicking

class Puppy
	def fetch(toy)
		puts "I brought back the #{toy}!"
		toy
	end

end

#needs the .new to initalize an instance....
#If we wanted, however, we could, in line 17, have it read
# def fetch.self(toy) to make it a "class method"
#as written, it's an "instance method"
Puppy.new.fetch("rope")

