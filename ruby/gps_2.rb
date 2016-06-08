# defines a method to create a hash from a string seperated by spaces. It gives the hash a value
# equal to the number of times the word in the string is repeated by first creating an array (using .split)
# and counting the instances of the string in that array

def grocery_list(input)
	list_hash = {} 
	list_array = input.downcase.split
	list_array.each {|item| list_hash[item] = list_array.count(item)}
	list_hash
end

#defines a method to add an item to an existing list; if the item is already there it adds another to the count
#method assumes an array on the 'new item' paramater because the driver code uses a .split

def item_adder(existing_list,new_item)
	new_item.each do |new_item|
		if existing_list.has_key?(new_item)
			existing_list[new_item] += 1
		else
			existing_list[new_item] = 1
		end
	end
	existing_list
end

#defines a method to remove an item. If the item speicifed is not in the list, it gives an error message
def item_remover(existing_list, item)
	if existing_list.has_key?(item) == false
		puts "item is not in list"
	else
		existing_list.delete_if {|key, value| key==item}
	end
	existing_list
end

#defines a method to update the quantity of an item in the list
def quantity_updater(existing_list, key, quantity)
	existing_list[key] = quantity
	existing_list
end

#defines a method to print an existing list with some line breaks to make things look pretty
def list_printer(existing_list)
	puts "\n \n Total Grocery List\n "
	existing_list.each {|key,value| puts "#{value.to_s} #{key} \n"}
	puts "\n \n"
	existing_list
end

####START OF DRIVER CODE####
#Gives an initial prompt for items on the list 
puts "welcome to the grocery list creator. \n Please type the items you want to add to the list, seperated by a space. \n If you need to list mutiple quantities of an ite., write it twice."
my_list = grocery_list(gets.chomp)
list_printer(my_list)
user_response = nil

#Gives the user interface for different editing options
#uses a case argument for the user input, 'a' to add, 'e' to edit, 'd' to delete, and 'q' to quit
until user_response == "q"
	puts "Would you like to edit your list? \n To add an item, write 'a'\n To edit the quantity of an item, write 'e'\n to delete an item, write 'd' \n To quit, type 'q'"
	user_response = gets.chomp.downcase
	case user_response
	when "a"
		#add
		puts "what item(s) would you like to add? \n Again, seperate multiple items with spaces"
		item_adder(my_list, gets.chomp.downcase.split)
		list_printer(my_list)
		user_response
	when "e"
		#edit
		item_edit_response = nil
		until my_list.has_key?(item_edit_response) == true
			puts "what item do you want to change?"
			item_edit_response = gets.chomp
			if my_list.has_key?(item_edit_response) == false
				puts "error, that item is not in list"
				item_edit_response
			else
				puts "How many of the item do you want in your list?"
				quantity_change = gets.chomp.to_i
				quantity_updater(my_list, item_edit_response, quantity_change)
				list_printer(my_list)
				item_edit_response
			end
		end
		list_printer(my_list)
		user_response
	when "d"
		#delete
		item_edit_response = nil
		until my_list.has_key?(item_edit_response) == true 
			puts "what item would you like to delete?"
			item_edit_response = gets.chomp
			if my_list.has_key?(item_edit_response) == false
				puts "error, that item is not in list"
				item_edit_response
			else
				item_edit_response
			end
		end
		item_remover(my_list, item_edit_response)
		puts "item delted"
		list_printer(my_list)
		user_response
	when "q"
		list_printer(my_list)
		user_response
	else
		#error
		puts "invalid input"
		user_response
	end
end

