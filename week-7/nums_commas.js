// Separate Numbers with Commas in JavaScript **Pairing Challenge**

// I worked on this challenge with Timothy Meixell.

// Pseudocode
// Input: integer
// Output: integer as string with commas
// Create method to reverse a string
//  iterate over the string, starting at the end
//   append the characters to result string
// Create method to insert commas
//   turn integer to string
//   call reverse method
//   iterate over the string. Insert commas at each 4th
//   call reverse method

// Initial Solution

// var reverseString = function(string) {
//   var result = "";
//   for (var i = string.length -1; i >= 0 ; i--) {
//     result += string.charAt(i);
//   }
//   return result;
// }

// function seperateComma(int){
//   var num = int.toString();
//   num = reverseString(num);
//   for (var i = 3; i < num.length; i += 4){
//     num = num.slice(0,i) + "," + num.slice(i);
//   }
//   return reverseString(num);
// }

// Refactored Solution
var reverseString = function(string) {
  var result = "";
  for (var i = string.length -1; i >= 0 ; i--) {
    result += string.charAt(i);
  }
  return result;
}

function seperateComma(int){
  var num = reverseString(int.toString());
  for (var i = 3; i < num.length; i += 4){
    num = num.slice(0,i) + "," + num.slice(i);
  }
  return reverseString(num);
}

// Your Own Tests (OPTIONAL)
console.log(seperateComma(1211111112));

// Reflection
// What was it like to approach the problem from the
// perspective of JavaScript? Did you approach the problem
// differently?
  // This problem is much easier in Ruby due to its built
  // #reverse method. In javaScript, we had to create our
  // own #reverseString method to handle this.

// What did you learn about iterating over arrays in JavaScript?
  // I've gotten a ton of practice using for loops and
  // am pretty comfortable with their usage. I don't
  // think I picked up anything new about them in this
  // challenge.

// What was different about solving this problem in JavaScript?
  // There's no built in method in javaScript for reversing
  // a string, so we had to make one ourselves.

// What built-in methods did you find to incorporate in your refactored solution?
  // We used #charAt to access index points within a
  // string. We also used #slice to add the commas in
  // where we needed them.