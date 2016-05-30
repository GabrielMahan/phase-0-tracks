puts "Welcome to the vampire tester, how many employees will you be testing today?"
checknum = Integer(gets)
currentnum = 0


#defines a method to be recalled later
def vchecker

	#sets vampire status
	vstatus = "Inconclusive"

	#gathers information
	puts "what's your name"
	vname = gets.chomp
	puts "how old are you"
	vage = Integer(gets)
	puts "when year you born?"
	vbirth = Integer(gets)
	puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)"
	vgb = gets.chomp
	puts "Would you like to enroll in the company’s health insurance? (yes/no)"
	vhs = gets.chomp
	###


	#sets conditionals to establish truth values for vampire traits
	if ((vbirth + vage) > 2014) && ((vbirth + vage) < 2017)
		vbirthboolean = true
	else vbirthboolean = false
	end

	vgbboolean = true
	if vgb == "no"
		vgbboolean = false
	end

	vhsboolean = true
	if vhs == "no"
		vhsboolean = false
	end
	####

	#determines vampire status
	if vbirthboolean &&  vgbboolean
		vstatus = "probably not a vampire"
	end

	if !vbirthboolean && !vgbboolean
		vstatus = "probably a vampire"
	end

	if !vbirthboolean && !vgbboolean && !vhsboolean
		vstatus = "almost certainly a vampire"
	end

	if (vname == "Drake Cula") || (vname == "Tu Fang")
		vstatus = "definitely a vampire"
	end


	#Asks the canidate for allergies, AFTER establishing the boolean
	#makes a counter, adds one for each response
	puts "Do you have any allergies? List them one at a time and hit enter after each entry"
	anumber = 1
	allergylist = nil
	#sets the index at 1 and the allergy list


	until anumber == 0
		#the loop will keep running until the user types "done," at which point the index is set at zero
		#note that this is not storing the data in any significant way
		puts "Allergy number #{anumber}"
		
		allergyresponse = gets.chomp
		

		if allergyresponse == "sunshine"
			vstatus = "Definitely a vampire"
			anumber = 0
		elsif allergyresponse == "done"
			anumber = 0
		else
			allergylistnumber = anumber.to_s
			allergylist = "#{allergylist}   #{allergylistnumber}, #{allergyresponse}"
			anumber += 1
		end	
	end
	puts "listed allergies #{allergylist}"
	

	#Prints Vampire Status#
	case vstatus
	when "Inconclusive"
		puts "the results of the test are Inconclusive"
	else
		puts "The results of the test have determined that #{vname} is #{vstatus}"
	end


	
end
	
until currentnum == checknum
	puts "Test for Prospective Employee #{1+currentnum}"
	vchecker
	currentnum += 1
end 

puts "Actually, lets be friends, even if you are a werewolf"