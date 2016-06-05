def array_er(a,b,c)
	[a,b,c]
end

def array_add(a,b)
	a << b
	p a
end

a = [2,3,4,5,6]
b = 10

array_add(a,b)

array_add([],"a")
array_add(["a", "b", "c", 1, 2], 3)

 array_er(3,4,5)

#initalizes an empty array
array1 = []

#add five items
p array1
array1 += [2,3,4,"cool", nil]


#delete at 2 index
p array1
array1.delete_at(2)

#insert a new item
p array1
array1.insert(2, "coolioio")
p array1

#remove the first without referencing the index; two ways, one with delete and first, the other with shify

#array1.delete(array1.first)
array1.shift
p array1


puts array1.include?(nil)

if array1.include?(nil)
	puts "the array contains a nil element"
else
	puts "the array does not contain a nil element"
end

#initalize another arry
array2 = ["cool", "coolest", "yay"]

array3 = array1+array2
p array3

#.concat adds to the end, like a chain
