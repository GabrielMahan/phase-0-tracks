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


function cars(make, model, year) {
	this.make = make;
	this.model = model;
	this.year = year;
	this.vroom = function() {console.log("vroom vroom")};
}

var car1 = new cars("Ford", "taurus", 1993);
console.log(car1);
car1.vroom();

var car2 = new cars("dodge", "viper", 2003);
console.log(car2.make);