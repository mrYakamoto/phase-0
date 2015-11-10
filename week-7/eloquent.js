// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var name = "Balthasar";
console.log("Hello " + name);

function favorite_food() {
  var food = prompt("What's your favorite food?","");
  console.log("oh snap, " + food + " is my favorite too!!!!!!");
}
favorite_food();

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
//Looping a Triangle
var output = "";
var counter = 1;
while (counter < 8) {
  output += "#";
  console.log(output);
  counter++;
}



// Functions

// Complete the `minimum` exercise.

function min(num1, num2) {
  if (num1 == num2) {
    return "The numbers are equal";
  }
  else {
    return (num1 < num2) ? num1 : num2;
  }
}

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "Gregg",
  age: 28,
  favorite_foods: ["pizza", "beef", "salad"],
  quirk: "weird"
};