#program needs to enter the name, age, number of children, decor theme, and etc
#dog preference too, why not

#keys should be symbols

#PROGRAM REQUIREMENTS
#Prompt user for info --check
#convert input to data type required
#give the user an apportunity to update by returning to a given key at the user's input
#print the latest, and exit


##

	
#Ask about revision
#print and exit
##

#Business

def design_info
	design_info = {age: nil, numberofchildren: nil, decortheme: "", dogpreference: ""}
	design_info.each do |key,value| 
		puts "What is the #{key.to_s}?"
		if value.is_a?(String)
			design_info[key] = gets.chomp
		else
			design_info[key] = gets.chomp.to_i
		end
	end
		
	
	p design_info
	response = nil
	until response == "nope"
	puts "Would you like to revise any responses? If so type the data type you need to revise; if not, type --nope--"
	response = gets.chomp
		if response == "nope"
			break
		else
			puts "what new value do you want to put in #{response}??"
			design_info[response.to_sym] = gets.chomp
		end
	
	end
	p design_info
end
#UI
design_info
