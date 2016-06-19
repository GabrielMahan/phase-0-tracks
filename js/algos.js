
// Release 0-- longest Phrase // (test code at bottom)

//take the array
//for each item in it...
/////for each item in the array, add plus one to a counter  if the  it's >= to the array
//add to a blank array if the count is == array length. 

function longest_phrase(array) {
	var blank_array = [];
	for (var i=0; i<array.length; i++)  {
		var array_counter = 0;
		for (var j=0; j<array.length; j++) {
			if (array[i].length >= array[j].length) {
				array_counter ++;
			}
		}
		if (array_counter == array.length) {
			blank_array.push(array[i]);
		} 
	}
	//console.log(blank_array);
	return blank_array; 
}
//Release 1 // 
//for each key in Object 1 (loop)
//	for each key in Object2, see if V,hash1 == V,hash2 and if Key1 == Key2
//if it is, then set truth value as true

function pair_checker(object1, object2) {
	var return_truth_value = false;
	for (var key1 in object1) {
		for (var key2 in object2) {
			if (object1[key1] == object2[key2]) {
				if (key1==key2) {
					return_truth_value = true;
				}
			}
		}	
	}
	//console.log(return_truth_value);
	return return_truth_value;
}
/////Release 2//////// (test code at bottom)
//generate a random char 
function random_char_generator() {
	var letters = "abcdefghijklmnopqrstuvqxyz";
	var random_letter_index = Math.floor(Math.random()*25+1);
	return letters[random_letter_index];
}
//make a word, 1-10 chars long, out of random chars
function random_word_generator() {
	var new_string = "";
	var random_length = Math.floor(Math.random()*10+1);
	for (var i=0; i<random_length; i++) {
		new_string += random_char_generator();
	}
	return new_string;
}
//make an array out of random words
function random_string_array_generator(number_of_strings) {
	var random_array = [];
	for (var i=0; i<number_of_strings; i++) {
		random_array.push(random_word_generator());
	}
	return random_array;
}

///DRIVER CODE///
for (var i=0; i<10; i++) {
	var test_array = [];
	test_array = random_string_array_generator(4);
	console.log(test_array);
	console.log(longest_phrase(test_array));
}



//release 0 test code

//var sample_array_1 = ["long phrase","longest phrase","longer phrase"];
//var sample_array_2 = ["a","abcd","sdfsdfsdfsdfsdf", "asdasfdhkljgad", "fgdkflhgslkjfhgsdfgsfd"];
//var sample_array_3 = ["aaa", "bbb", "dd"];
//longest_phrase(sample_array_1);
//longest_phrase(sample_array_2);
//longest_phrase(sample_array_3);


//Release 1 Test Code  //
//var test_object1 = {name: "steven", age: 54};
//var test_object2 = {name: "Tamir", age: 54};
//var test_object3 = {name: "Tamir", age: 55};
//var test_object4 = {name: "Tamir", fav_color: "blue", age:54};
//var test_object5 = {name: "Tamir", fav_color: "blue", age:52, kilo_weight:54};

//should be true
//pair_checker(test_object1, test_object2);

//should be false
//pair_checker(test_object1, test_object3);

//should be true
//pair_checker(test_object1, test_object4);

//should be false!
//pair_checker(test_object1, test_object5);