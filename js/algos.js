function array_sorter(array) {
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
}

var sample_array_1 = ["long phrase","longest phrase","longer phrase"];
var sample_array_2 = ["a","abcd","sdfsdfsdfsdfsdf", "asdasfdhkljgad;fgdkflhgslkjfhgsdfgsfd"];
var sample_array_3 = ["aaa", "bbb", "dd"]
array_sorter(sample_array_1);
array_sorter(sample_array_2);
array_sorter(sample_array_3);

//take the array
//for each item in it
/////for each item in the array, add plus one to a counter  if the  it's >= to the array
//add to a blank array if the count is == array length. 