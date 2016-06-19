var color_array = ["blue", "blueish", "indigo", "teal"];
var horse_name_array = ["johnson", "charles", "roberto", "hunchy"];
horse_name_array.push('big boy');
color_array.push('silver');
console.log(color_array + "  " + horse_name_array);


function name_color_pair(names, colors) {
	var pairs = {};
	for (var i = 0; i < names.length; i ++ ) {
		pairs[names[i]] = colors[i];
	}
	return pairs;
}

console.log(name_color_pair(horse_name_array, color_array));