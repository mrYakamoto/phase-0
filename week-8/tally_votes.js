//8.3 Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with Fatma Ocal
// This challenge took me 2 hours.

// These are the votes cast by each student. Do not alter these objects here.

var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
};

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
};


var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
};

// Pseudocode
// Input: votes objects
// Output: Officers objects who are the winners.
// Define method (maybe tally votes) nested for loop that if key already exists, count the tally.
// If it doesn't exist, create the key with value of 1.
//



// __________________________________________
// Initial Solution


// for (var key in votes){


//  for (var prop in votes[key]) {

//   if (prop == "president"){

//     if (voteCount['president'].hasOwnProperty(votes[key][prop])){
//       voteCount['president'][votes[key][prop]] += 1;
//     }
//     else {
//       voteCount['president'][votes[key][prop]] = 1;
//     }
//   }

//   if (prop == "vicePresident"){

//     if (voteCount['vicePresident'].hasOwnProperty(votes[key][prop])){
//       voteCount['vicePresident'][votes[key][prop]] += 1;
//     }
//     else {
//     voteCount['vicePresident'][votes[key][prop]] = 1;
//     }
//   }

//   if (prop == "secretary"){
//     if (voteCount['secretary'].hasOwnProperty(votes[key][prop])){
//       voteCount['secretary'][votes[key][prop]] += 1;
//     }
//     else {
//       voteCount['secretary'][votes[key][prop]] = 1;
//     }
//   }

//   if (prop == "treasurer") {
//     if (voteCount['treasurer'].hasOwnProperty(votes[key][prop])){
//       voteCount['treasurer'][votes[key][prop]] += 1;
//     }
//     else {
//       voteCount['treasurer'][votes[key][prop]] = 1;
//     }
//   }
//  }
// }

// for (var k in voteCount){
//   var max = 0;
//   for (var p in voteCount[k]){
//     if (voteCount[k][p] > max ) {
//       max = voteCount[k][p];
//       officers[k] = p;
//     }
//   }
// }

// console.log(officers);


// __________________________________________
// Refactored Solution

//  key = voter
//  prop = office
//  votes[key][prop] = vote

for (var key in votes){

 for (var prop in votes[key]) {

   if (voteCount[prop].hasOwnProperty(votes[key][prop])){
     voteCount[prop][votes[key][prop]] += 1;
   }
   else {
     voteCount[prop][votes[key][prop]] = 1;
   }
 }
}

for (var k in voteCount){
  var max = 0;
  for (var p in voteCount[k]){
    if (voteCount[k][p] > max ) {
      max = voteCount[k][p];
      officers[k] = p;
    }
  }
}

// __________________________________________

/* Reflection

-What did you learn about iterating over nested objects in JavaScript?
I learned how to iterate over keys in an object by using the a 'for'
statement, like [ for(var key in object){} ].

-Were you able to find useful methods to help you with this?
No, we didn't use any pre-existing methods to accomplish it, but we
were able to compress our solution significantly into a pretty
simple for statement.

-What concepts were solidified in the process of working through this challenge?
This challenge really helped me a lot to understand iterating objects in
JavaScript. We got stuck for a while trying to keep straight what exactly
the 'key' and 'prop' were standing for and how to access the actual
vote value. We figured out that we'd have to use the variable names for the
first two layers of the object structure and then use bracket notation of
the variables to access the final value.

*/

// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)