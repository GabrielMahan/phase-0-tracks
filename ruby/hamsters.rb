puts "what's the hamster's name"
hname = gets.chomp


hvol = nil
until hvol.is_a?(Fixnum) && hvol<11 do 
	puts "what is the hamster's volume level?"
	print "Please enter a whole number between one and ten?: "
	hvol = Integer(gets) rescue nil
end


puts "what color is the fur?" 
hfur = gets.chomp

puts "is he/she a good canidate for adoption?"
hcanidate = gets.chomp
if hcanidate.empty?
	hcanidate = nil
	puts hcanidate
else
	break
end



hage = nil # initialize the variable so you can invoke methods on it

until hage.is_a?(Fixnum) do #fixnum... is a class? 
	puts "How old is the hamster?"
	print "Please enter a number: "
	hage = Integer(gets) rescue nil
end

puts hage
puts hfur
puts hname
puts hcanidate