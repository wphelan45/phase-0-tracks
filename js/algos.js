//Release 0
// Algorithm for a function that returns the longest string
// 1. Create an array with 3 strings.
// 2. Create a function that takes the array and make sure it returns the longest string.
//		-Create a new array variable and output variable
//		-Create a for loop that loops through the array and checks each string's length
// 3. Make a few arrays that can be entered into the new function.

function long_in_array(array){
	var output = null;
	var zero = 0
	var strings = array.slice(0, -1)
	for (var i = 0; i < strings.length; i++) {
		if(array[i].length > zero) {
        zero = array[i].length;
        output = strings[i];
    } 
  }
  return output;
}

var test_array = ["short", "longer", "biggest"]
console.log(long_in_array(test_array));

var test2 = ["coke", "pepsi", "mountain dew"]
console.log(long_in_array(test2));

var test3 = ["Soccer", "Basketball", "Baseball", "Hockey"]
console.log(long_in_array(test3));

//Release 1
test_hash1 = {name: "Steven", age: 54}
test_hash2 = {name: "Tamir", age: 54}

function compare_hashes(h1, h2){
	var obj = {h1, h2}
	for (var i = 0; i < obj.length; i++){
		if(h1.values(h1) == h2.values(h2))
			return obj.values(h1), obj.values(h2)
	}
	return obj
}

console.log(compare_hashes(test_hash1, test_hash2));

//Release 2
function build_string(integer){
	var alphabet = "abcdefghijklmnopqrstuvwxyz"
	var string_length = integer
	var string = alphabet.raw
	for (var i = 0; i < string_length; i++){
		console.log(alphabet.random(integer))
	}
	return string;
}

console.log(build_string(3));



