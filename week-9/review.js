// -Basic functionality
// Create a new list
// Add an item with a quantity to the list
// Remove an item from the list
// Update quantities for items in your list
// Print the list (Consider how to make it look nice!)

// PSEUDOCODE
// CREATE class GroceryList
// Include functions for basic functionality inside class.



// 6.7 Validate Credit Card translated to JAVASCRIPT
class CreditCard {
  constructor(cardNumber){
    this.cardNumber = cardNumber;
    if (this.cardNumber.toString().length != 16){
      throw new Error("Input must be 16 digits.")
    }
  }

  checkCard(){
    var result = this.sumDigits(this.doubleEvenIndexes());
    if (result % 10 == 0) {
      return "This is a valid card number";
    }
    else {
      return "This is not a valid card number";
    }

  }

  doubleEvenIndexes(){
    var numArray = this.cardNumber.toString().split('').map(function(numString){return parseInt(numString);});
    for (var i = 0; i < numArray.length; i++) {
      if ( (i === 0)||(i % 2 === 0) ) {
        numArray[i] *= 2;
      }
    }
    return numArray.join('');
  }

  sumDigits(number){
    var numArray = number.toString().split('').map(
      function(numString) { return parseInt(numString); } );
    return numArray.reduce( function(a,b){ return a+b; } );
  }

}

var card = new CreditCard(4563960122001999);
console.log(card.checkCard());


// GROCERY LIST IN JAVASCRIPT
class GroceryList {
  constructor(store) {
    this.store = store;
  }
  addItem(item, quantity){
    if (this.item) {
      return "That's already on the list."
    }
    else {
      this[item] = quantity;
    }
  }
  removeItem(item){
    if (this[item] === undefined){
      return "That item's not on the list yet.";
      }
    delete this[item];
    return "Removed " + item + " from the list."
  }
  changeQuantity(item, quantity){
    if (this[item] === undefined){
      return "That item's not on the list yet."
    }
    this[item] = quantity;
    return item + ": " + quantity.toString();
  }
  printList(){
    console.log("\n"+this.store + " Grocery List");
    for (var key in this){
      if (key == "store"){
      }
      else{
      console.log(key + ": " + this[key]);
      }
    }
  }

}

// DRIVER CODE
var tday = new GroceryList("Whole Foods");
console.log(tday);
tday.addItem("milk", 1);
tday.addItem("banana", 3);
console.log(tday);
console.log(tday.removeItem("milk"));
console.log(tday["milk"]);
console.log(tday.changeQuantity("banana",2));
console.log(tday.banana);
tday.printList();





