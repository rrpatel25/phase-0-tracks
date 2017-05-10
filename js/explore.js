// Pseudocoding a reverse function

// For the reverse function, there is a string input
// The function will take the length of the string and subtract one
// 	and while that number is greater than 0,
// 	the body of the function will take the last letter of the string input
// 	and add it to a new empty string.
// The counter/number will subtract 1, causing the function to check the second-to-last letter
// 	and adding it to the empty string containing the letter at the new index.
// This function goes on for as long as the number is greater than 0.



// JS Function
function reverse(string) {
	var output = "";
	for (var strIndex = string.length - 1; strIndex >= 0; strIndex--) {
		output += string[strIndex];
	};
	return (output);
}


// Driver Code
var result = reverse("hello");

// Conditional Print
if (1 == 1) {
	console.log(result);
} else {
	console.log("Huh?");
}
