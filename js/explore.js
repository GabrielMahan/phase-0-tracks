// reverse a string ///
// loop throuhg the letters... adding them to a blank string
//start at the end.. the string length 

function reverse(string) {
	var new_string = '';
	var new_string_index = 0;
	for (i=string.length-1; i>=0; i--) {
		new_string = (new_string + string[i])
		new_string_index += 1;
	}
	console.log(new_string)
	return new_string
}

reverse('wild nights')
var bn = reverse('boogie nights')
console.log(bn)