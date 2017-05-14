// JavaScript - Algorithms


// Release 0: Find the longest phrase

// Given an array of elements containing different words/phrases
// Set the first element equal to longest. 
// Starting with a counter 1, while it's less than the length of the array,
// If the element's length at the position of the counter is greater than the current
// longest element, set the longest element equal to the new element.
// This continues as the counter is incremented by 1 every cycle, while remaining
// less than the length of the array.
// At the end, return the longest variable.

var array = ["long phrase","longest phrase","longer phrase","longlonglong phrase"];
var arr = ["this", "is", "tarantula", "encyclopedia", "germ"];
var a = [];

function longestElement(array) {
	if (array.length > 0) {
		var longest = array[0];
		for (var i = 1; i < array.length; i++) {
			if (array[i].length > longest.length){
				longest = array[i];
			}
		}
		return longest;
	}
}

// Driver Code
console.log(longestElement(array));
console.log(longestElement(arr));
console.log(longestElement(a));



