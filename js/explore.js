// 1. Create a variable that takes a string
// 2. Create a method that will reverse the string in the variable
//		-Create a new array to store the variable's string
//		-Loop through the new array and switch the order of the characters
//		-Create a new array to store the newly reversed string
// 3. Call the method and debug if necessary

var string = "em esrever"

function reverse(s) {
	reverse_array = [];
	for (var i = s.length - 1, r = 0; i >= 0; i--, r++)
		reverse_array[r] = s[i];
		return reverse_array.join('');
}

console.log(reverse(string));