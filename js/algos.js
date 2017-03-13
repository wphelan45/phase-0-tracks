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

/* Release 1
Design a function that checks if two object share a key-value pair
1. Name a function and give it two parameters
2. Write an if/else statement that returns true or false
3. Make sure you don't compare the prperty's string
4. Test with driver code*/

function create_array(object) {
	var array = (Object.keys(object).map(function(e) {
		return [Number(e), object[e]];
	})
}

function key_compare(key, key2) {
	var key_array = key.slice(0, -1);
	var key_array2 = key2.slice(0, -1);
	for (var i = 0; i < key_array.length; i++) {
		for (var x = 0; x < key_array2.length; x++) {
			if ((key_array[1] == key_array2[1]) || (key_array[3] == key_array2[3])) {
				console.log("true");
			}
			else {
				console.log(false);
				}
			}
		}
	};

hash = {name: "Steven", age: 54};
hash2 = {name: "Tamir", age: 54};
console.log(create_array(key_compare(hash, hash2)));

/*
1. Create a function that takes a string and returns an array of strings with equal length
2. Figure out how to make the function return random strings of varying lengths
3. Test with driver code
*/

function integer_to_string(int) {
	var text = "";
    var possible = "abcdefghijklmnopqrstuvwxyz";
	var array = [];
	for (var i = 0; i < someText.length; i++) {
    	if (someText[i] === myWord[0]) {
        	for (var j = i; j < someText[i] + myWord.length; j++) {
            	hits = [];
            	hits.push("text");
            	hits[0];
		for( var i=0; i < 5; i++ )
        	text += possible.charAt(Math.floor(Math.random() * possible.length));
    	return text;
		}
	}
};

console.log(integer_to_string(3));