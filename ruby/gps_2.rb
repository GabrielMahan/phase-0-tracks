
def grocery_list(input)
	list_hash = {} 
	input.split.each {|item| list_hash[item] = 1}
	list_hash
end

def item_adder(existing_list,new_item)
	existing_list[new_item] = 1
	existing_list
end

def item_remover(existing_list, item)
	existing_list.delete_if {|key, value| key==item}
	existing_list
end

def quantity_updater(existing_list, key, quantity)
	existing_list[key] = quantity
	existing_list
end

def list_printer(existing_list)
	puts "Total Grocery List"
	existing_list.each {|key,value| puts "#{value.to_s} #{key}"}
	existing_list
end

my_list = grocery_list("carrots apples cereal pizza")
puts my_list
my_list = item_adder(my_list,"bread")
puts my_list
my_list = item_remover(my_list,"bread")
puts my_list
my_list = quantity_updater(my_list, "cereal", 4)
puts my_list
list_printer(my_list)
