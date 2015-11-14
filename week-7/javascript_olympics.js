//Pseudocode
//Input: Array of athletes and events
// Output: Modified array with a win property

  // Add a win property to each athlete
  // Make the win property print a string using the athlete's other properties.

function addWin(array) {
  //for array; ;
  for (var i = 0; i < array.length; i++) {
    array[i].win = function(){
      console.log(this.name + " wins the " + this.event + "!");
    };
  }
}

var athletes = [
                {name: "Sarah", event: "High Jump"},
                {name: "John", event: "Discus"}
               ];

addWin(athletes);
console.log(athletes);
athletes[1].win();

//Release 2

function reverseString(string){
  return string.split('').reverse().join('');
}

console.log(reverseString('Karla'));

// INITIAL
// function findEvens(array){
//   var evens = [];
//   for (var i = 0; i < array.length; i++) {
//     if (array[i] % 2 === 0) {evens.push(array[i])};
//   };
//   return evens;
// }

// REFACTORED
function findEvens(array){
  var x = array.filter(function(value){return value % 2 === 0; });
  return x;
}
// DRIVER CODE
var numbers = [1,2,3,4,5,6,7,8,48];
console.log(findEvens(numbers));

// Release 4
class Athlete {
  constructor(name, age, sport, quote){
    this.name = name;
    this.age = age;
    this.sport = sport;
    this.quote = quote;
  }
}

//DRIVER CODE
var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!");
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)




// Reflection

// What JavaScript knowledge did you solidify in this challenge?
// I solidified my understanding of the 'this' operator and when to use it.
// This challenge also helped me understand the use of the class
// constructor.

// What are constructor functions?
// constructor functions are used to create new class instances. It's
// used much in the same way as initialize in Ruby.

// How are constructors different from Ruby classes (in your research)?
// Constructors are not analogous to Ruby classes but rather Ruby's initialize
// method.