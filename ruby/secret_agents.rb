#pseudocode -- make the output advance one letter forward

def encrypt(string)
	index = 0
	output = ""
	until index == string.length
		if string[index] == " "
			output += string[index]
		else
		output +=string[index].next
		end
	index += 1
	end
	puts output
	return output 
end

def decrypt(string)
	index = 0
	output = ""
	until index == string.length
		if string[index] == " "
			output += string[index]
		else
		#need to change this
		output += "abcdefghijklmnopqrstuvwxyz"["abcdefghijklmnopqrstuvwxyz".index(string[index])-1]
		end
	index += 1
	end
	puts output
	return output 
end

#nested decrpyption methods will work because of the return output

puts "would you like to encrpyt or decrypt? Please specify only with 'encrypt' or 'decrypt'"
response = gets.chomp


#decrpyts 


case response
when "encrypt"
	puts "what is the phrase you would like to encrypt???"
	encrypt(gets.chomp)
when "decrypt"
	puts "what is the phrase you would like to decrpyt???"
	decrypt(gets.chomp)
end

