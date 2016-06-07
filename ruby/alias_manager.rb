#Swapping the first and last name.
#Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', and all of the consonants (everything else besides the 
#vowels) to the next consonant in the alphabet. So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.


#Defines a character changer that will be used in the 'name swapper method'
	#Methods takes a character, then changes it the next consonant or vowel (e.g. a->e, b->c))
def char_changer(char)

	#if it's a vowel
	if !("aeiou".index(char)==nil)
		char = "aeioua"["aeiou".index(char)+1]
		#p char
	#if it's a consonant
	elsif !("bcdfghjklmnpqrstvwxyz".index(char) == nil)
		char = "bcdfghjklmnpqrstvwxyzb"["bcdfghjklmnpqrstvwxyz".index(char)+1]
	#if it's a differnt symbol
	else
		char
	end
	
end


#Defines the a method to change the name
	#note that the name parameter it takes has already been reversed (i.e. "last name, first name) by the driver code
	#so this method just changes the characters
def name_swapper(name)
	#p name 
	#p name.length
	index = 0
	new_name = ""
	while index < name.length
		old_char = name[index]
		#p old_char
		new_char = char_changer(old_char)
		#p new_char
		new_name[index] = new_char.to_s
		index += 1
	end
	#p new_name
	new_name

end

#p char_changer("r")
#p char_changer("a")

log = []
response = ""
gibberish_name = nil
until response == "quit"
	puts "what's full name you want to swap??  Type 'quit' to exit."
	response = gets.chomp
	if response == "quit"
		response
	else
		name_to_translate = response.split.rotate.join(' ').downcase
		gibberish_name = name_swapper(name_to_translate)
		p gibberish_name
		log << [response, gibberish_name]
	end
end
#p log
puts "Thanks for using alias manager"
puts "A log of your aliases will now print"
log.each {|x| puts "#{x[0]} has a alias name of #{x[1]}"}




