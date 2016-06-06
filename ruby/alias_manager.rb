#Swapping the first and last name.
#Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', and all of the consonants (everything else besides the 
#vowels) to the next consonant in the alphabet. So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.

def name_swapper
	puts "what's full name you want to swap??"
	name = gets.chomp.split.rotate
	p name 
	vowels = "aeiou"
	consonants = "bcdfghjklmnpqrstvwxyz"
	
	first_name = name[0]
	last_name = name[1]

	p first_name
	p last_name
		
	char_index = 0 	
	while char_index < first_name.length
		p first_name[char_index]

		if consonants.index(first_name[char_index]) == nil
		#i.e. if it's a vowel
			
			first_name[char_index] = vowel
		
		consonants.index(first_name[char_index])
			
	
		char_index +=1 
	end
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

	p name
	name.join(' ')
	p name
end

name_swapper