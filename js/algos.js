////////// JavaScript - Algorithms ///////////


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


////////////////////////////////////////////////////////////////////////////////

// Release 1: Find a key-value match

// Given two objects that are passed into the function.
// Start with the match being false as there haven't been any matches. 
// Iterate and retrieve the keys of the two objects that were passed in.
// If there is ever an instance where the keys of the two objects match AND
// the values of the two objects match,
// then set the match variable to true and break the loop.
// Otherwise, if there is no match, the match will remain as being false.
// At the end of the function, be sure to return the match variable.

var obj1 = {name: "Steven", age: 54};
var obj2 = {name: "Tamir", age: 54};
var obj3 = {animal: "Dog", legs: 4}; 
var obj4 = {animal: "Dog", legs: 3};

function match(arr1, arr2) {
  var match = false;
  for (var i in arr1) {
    for (var j in arr2) {
      if (i == j && arr1[i] == arr2[j]) {
      	match = true;
      	break;
      }
    }
  }
  return match;
}

// Driver Code
console.log(match(obj1, obj2));
console.log(match(obj3, obj4));
console.log(match(obj1, obj3));
console.log(match(obj2, obj4));
console.log(match(obj1, obj4));


////////////////////////////////////////////////////////////////////////////////

// Release 2: Generate random test data

//






