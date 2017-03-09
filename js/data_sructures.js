//Horses
var colors = ["blue", "red", "yellow", "orange"];
var name = ["Ed", "Larry", "Mo,", "Curly"];

colors.push("black");
name.push("Jasmine");

//var horse = {color: name};
//console.log(horse)

var horse = [],
	thing;

for (var i = 0; i < name.length; i ++){
	thing = {};
	for (var i = 0; i < colors.length; i++){
		thing[colors[i]] = name[i];
	}
	horse.push(thing);
}

console.log(horse);


//Cars

function Car(make, model, year){
	console.log("New car", this);
	this.make = make;
	this.model = model;
	this.year = year;
	console.log("Car has been built.");
}

var new_car = new Car("Toyota", "Camry", 2017)
	console.log(new_car);

var new_car = new Car("Toyota", "Prius", 2010)
	console.log(new_car);

var new_car = new Car("Ford", "Expolorer", 2014)
	console.log(new_car);



