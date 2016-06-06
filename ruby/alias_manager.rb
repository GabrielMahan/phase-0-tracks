#Swapping the first and last name.
#Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', and all of the consonants (everything else besides the 
#vowels) to the next consonant in the alphabet. So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.

def char_changer(char)

	#if it's a vowel
	if !("aeiou".index(char)==nil)
		char = "aeiou"["aeiou".index(char)+1]
		#p char
	#if it's a consonant
	elsif !("bcdfghjklmnpqrstvwxyz".index(char) == nil)
		char = "bcdfghjklmnpqrstvwxyz"["bcdfghjklmnpqrstvwxyz".index(char)+1]
	#if it's a differnt symbol
	else
		char = " "
	end
	
end



def name_swapper(name)
	#p name 
	#p name.length
	index = 0
	new_name = ""
	while index < name.length
		old_char = name[index]
		#p old_char
		new_char = char_changer(old_char)
		p new_char
		new_name[index] = new_char.to_s
		index += 1
	end
	p new_name


end

#p char_changer("r")
#p char_changer("a")

response = ""
until response == "quit"
	puts "what's full name you want to swap??"
	response = gets.chomp
	if response == "quit"
		response
	else
		name_to_translate = response.split.rotate.join(' ')
		name_swapper(name_to_translate)
	end
end

###JUNK####

#irst_name = name[0]
#	last_name = name[1]
#
#	p first_name
#	p last_name

#while char_index < first_name.length
#		p first_name[char_index]
#
#		if consonants.index(first_name[char_index]) == nil
#		#i.e. if it's a vowel
#			
#			first_name[char_index] = vowel
#		
#		consonants.index(first_name[char_index])
#			
#	
#		char_index +=1 
#vowels = "aeiou"
#consonants = "bcdfghjklmnpqrstvwxyz"

#for each name in the array... 
#	for name_index in 0..1
#		char_index = 0
#		until (char_index + 1) == name[name_index].length
#			#if it's not in vowels--i.e. it's a consonant
#			if vowels.index(name[name_index][char_index].downcase) == nil
#				name[name_index][char_index] = consonants[name[name_index][char_index].downcase.index+1]
#
#			#if it's a vowel
#			else
#				name[name_index][char_index] = vowels[name[name_index][char_index].downcase.index+1]
#			end
#		char_index += 1
#		end
#	end
#
#	p name
#	name.join(' ')
#	p name
#end
