//longest phrase

//take the array
//for each item in it...
/////for each item in the array, add plus one to a counter  if the  it's >= to the array
//add to a blank array if the count is == array length. 

function longest_phrase(array) {
	blank_array = [];
	for (i=0; i<array.length; i++)  {
		var array_counter = 0;
		for (j=0; j<array.length; j++) {
			if (array[i].length >= array[j].length) {
				array_counter ++;
			}
		}
		if (array_counter == array.length) {
			blank_array.push(array[i]);
		} 
	}
	console.log(blank_array);
	return blank_array; 
}

//driver / test code

var sample_array_1 = ["long phrase","longest phrase","longer phrase"];
var sample_array_2 = ["a","abcd","sdfsdfsdfsdfsdf", "asdasfdhkljgad", "fgdkflhgslkjfhgsdfgsfd"];
var sample_array_3 = ["aaa", "bbb", "dd"];
longest_phrase(sample_array_1);
longest_phrase(sample_array_2);
longest_phrase(sample_array_3);


///Release 1 // 
//Takes two obejcts, 
//checks to see if objects share a key-value pair (eg)

//take each key in the hash
////for each value in hash1
////////for each value in hash 2, see if V,hash1 == V, hash2
//////////////if it is, then 

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
	console.log(return_truth_value);
	return return_truth_value;
}


var test_object1 = {name: "steven", age: 54};
var test_object2 = {name: "Tamir", age: 54};
var test_object3 = {name: "Tamir", age: 55};
var test_object4 = {name: "Tamir", fav_color: "blue", age:54};
var test_object5 = {name: "Tamir", fav_color: "blue", age:52, kilo_weight:54};

//should be true
pair_checker(test_object1, test_object2);

//should be false
pair_checker(test_object1, test_object3);

//should be true
pair_checker(test_object1, test_object4);

//should be false!
pair_checker(test_object1, test_object5);


/////Release 2////////



