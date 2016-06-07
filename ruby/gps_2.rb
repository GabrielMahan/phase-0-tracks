# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
#what if it were 

# steps: 
  # split the string into an array, 
  # then for each element in the array, make that a key for our new hash,
  # set default quantity as one 
  	#but later on, for each iteration we should add to the default value
  # print the list to the console [can you use one of your other methods here?]
# output will be a hash

#for now, we'll make it a global varible
## without having to make it a global variable 
## global variables are not ideal 
## 


def grocery_list(input)
	#assuming that the input is a string
	#sets up the empty hash
	list_hash = {} 
	#in here, it's a local method 
	#assuming it's a string
	#after .split, we now have an arry from the string ["word1" "word2"]
	#for each word in the array, we want to make them a key for our empty 
	input.split.each {|item| list_hash[item] = 1}
	#puts $list_hash
	list_hash
end
# Method to add an item to a list
# input: item name and optional quantity
# steps: 
# add that that value to the hash
# hash[x] = y
# output: print the updated hash
def item_adder(existing_list,new_item)
	existing_list[new_item] = 1
	existing_list
end

my_list = grocery_list("carrots apples cereal pizza")

puts my_list

my_list = item_adder(my_list,"bread")
puts my_list

#item_adder("apple")
#p $list_hash

# Method to remove an item from the list
# input:
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output: