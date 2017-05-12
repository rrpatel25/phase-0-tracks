// // Declare 2 new arrays

var colors = ["blue", "red", "fuchsia", "coral"];
var names = ["Ed", "Seabiscuit", "American Pharoah", "Steve"];

function add_color(color) {
	colors.push(color);
}

function add_name(name) {
	names.push(name);
}

var horses = {};

for (var i = names.length - 1; i >= 0; i--) {
		horses[names[i]] = colors[i];
}

// var horses = {'names[0]': colors[0], 'Sea': colors[1]};
// below code for testing only
// var horses = {name: names[0], color: colors[0]}

// DRIVER CODE
add_color("black")
add_name("Jack")

console.log(colors)
console.log(names)
console.log(horses)




// Constructor function for car (release 2)

function Car(make, model, color) {
	this.make = make;
	this.model = model;
	this.color = color;
	this.car_fast = function() { console.log("vrooooom!"); };
};

// DRIVER CODE
var newCar = new Car("Mazda", "Miata", "red");
console.log(newCar);
newCar.car_fast();


// Release 3 (Research on own)

// 1. There is a site that somewhat explains it, but using a combination of for...in 
// with hasOwnProperty() is one way. The other way is to combine Object.keys()
// or Object.getOwnPropertyNames() with forEach() array itteration.

// 2. The advantage of using constructor functions is they're relatively
// simple and straightforward to create (in terms of writing the parameter and 
// defining the variables within it). Disadvantages are they are not as neatly
// organized and there appear to be limitations to the variables' scope.



