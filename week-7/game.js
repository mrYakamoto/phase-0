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
  protection: "t-shirt",
  lumber: 0,
  money: 0
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
    poisonIvy: 5,
    squirrelAttack: 6,
    skunked: 10,
    bear: 50
  }
};

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

function upgradeTool(newTool){
  if ( lumberjack.money >= new_tool.cost ) {
    lumberjack.tool = new_tool.id;
    lumberjack.power = new_tool.power;
    lumberjack.money -= new_tool.cost;
  }
}

function cutTree(tree) {
  console.log("It took you");
}

function buyProtection(newProtection){
  if ( lumberjack.money >= newProtection.cost ) {
    lumberjack.protection = newProtection.id;
  }
}

function chanceOfHazard() {

}