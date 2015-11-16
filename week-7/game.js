
// LUMBERJACK

// Lumberjack1 (user)
  // tool: saw, axe, or chainsaw

// forest
  //hash of trees with health values

// the time it takes to cut a tree down is the
// tree value divided by tool power. Lumberjack
// gets lumber equal to tree value.

var lumberjack = {
  health: 100,
  tool: "saw",
  power: 1,
  lumber: 0
};

var forest = {
  trees: {
    dogwood1: 10,
    dogwood2: 10,
    pine1: 20,
    pine2: 20,
    pine3: 20,
    oak1: 40,
    oak2: 40,
    redwood: 80
  },
  hazards: {
    poisonIvy: 15,
    squirrelAttack: 25,
    skunked: 30,
    bear: 80
  }
};

var timePassed = 0;

var axe = {
  id: "axe",
  cost: 40,
  power: 5
};
var chainsaw = {
  id: "chainsaw",
  cost: 100,
  power: 20
};

// Driver Code
startGame();
surveyForest();
cutTree('dogwood1');
surveyForest();
buyTool(axe);
cutTree('dogwood2');
surveyForest();
cutTree('pine1');
surveyForest();
buyTool(axe);
cutTree('pine2');
cutTree('pine3');
cutTree('oak1');
cutTree('oak2');
buyTool(chainsaw);
surveyForest();
cutTree('redwood');
surveyForest();


function startGame(){
  console.log("Yawwwwwn, what a beautiful Yukon morning. Yikes!! It's already 7am!!!! You overslept!! Now there's barely enough time to chop down an entire forest before your mandatory society of lumberjacks pancake social tonight! Get to work!\n")
}

function surveyForest(){
  var treesArray = Object.keys(forest.trees);
  console.log("TREES\t\tSTRENGTH")
  for (var key in forest.trees){
    if ( key.length < 8 ){
      console.log(key + "\t\t" + forest.trees[key]);
    }
    else {
      console.log(key + "\t" + forest.trees[key]);
    }
  }
  console.log("\n");
}

function cutTree(tree) {
  lumberjack.lumber += forest.trees[tree];
  console.log("It took you " + (forest.trees[tree] / lumberjack.power ) + " minutes to fall " + tree + ". It yielded you " + forest.trees[tree] + " units of lumber.\n");
  delete forest.trees[tree];
  chanceOfHazard();
  checkHealth();
}


function buyTool(newTool){
  if ( lumberjack.lumber >= newTool.cost ) {
    lumberjack.tool = newTool.id;
    lumberjack.power = newTool.power;
    lumberjack.money -= newTool.cost;
    console.log("Congratulations on your new " + newTool.id + ", use it well.\n");
  }
  else {
    console.log("Nah, you don't have enough for that. You need " + (newTool.cost - lumberjack.lumber) +  " more units of lumber.\n");
  }
}

function chanceOfHazard() {
 var randNumber = Math.floor((Math.random() * 100) + 1);
 if (randNumber < 2){
   lumberjack.health -= forest.hazards.bear;
   console.log("Ohhhh nooooo! You got attacked by a bear! You lost " + forest.hazards.bear + " health points");
   console.log("Current Health: " + lumberjack.health + "\n");
 }
 else if (randNumber < 10){
   lumberjack.health -= forest.hazards.skunked;
   console.log("What's that smell. Aww mannn, a skunk sprayed you. You lost " + forest.hazards.skunked + " health points");
   console.log("Current Health: " + lumberjack.health + "\n");
 }
 else if (randNumber < 30){
   lumberjack.health -= forest.hazards.squirrelAttack;
   console.log("You got attacked by a squirrel. You lost " + forest.hazards.squirrelAttack + " health points.");
   console.log("Current Health: " + lumberjack.health + "\n");
 }
 else if (randNumber < 50){
   lumberjack.health -= forest.hazards.poisonIvy;
   console.log("Some poison ivy got on you. You lost " + forest.hazards.poisonIvy + " health points.");
   console.log("Current Health: " + lumberjack.health + "\n");
 }
}

function checkHealth(){
  if (lumberjack.health <= 0) {
    throw new Error("You have tragically died in the name of lumberjacking");
  }
}