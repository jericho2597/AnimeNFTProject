
/*

  RULE GRAMMAR
  
  Components:
   - LAYER: the name of a type of layer.
   - ATTRIBUTE: a string that can belong to a layer describing it. Layers can have many attributes.
   - PROBABILITY: the probability that this rule is enforced (0.0-1.0)
   - ; is used as a delimeter and should not be contained in any components strings
   
  Statements:
  
      RULE = LAYER;ATTRIBUTE;PROBABILITY;

      The above rule is the only rule need for this generative art algorithm. 
      It specifies a type of layer that the rule is applied to (e.g Hair, Eyes etc), an attribute that this 
      layer could potentially have, and a probability that the rule is enforced.
      
  Examples:
  
      hair;blonde;0.5;       
        - this rule specifies that when the hair layer is selected, there is a 50% chance the hair layer will have
          the attribute 'blonde'
          
      eyes;happy;1.0;
        - this rule specifies that when the eye layer is selected, it must have the happy attribute
        
      weapon;sci-fi;0.0;
        - this rule specifies that when the weapon layer is selected, it will not have the sci-fi attribute
      
  How Rules Are Applied;
  
      As layers are selected, any rules they contain will be collected in a group that will be applied to successive 
      layer selections for the same run/task.
      
*/

int totalPopulation = 1000;

void setup(){
  
  frameRate(16);
  
}

// BEING TO LOAD IN ALL DATA
Loader data = new Loader();

void draw(){
  ArrayList<String> order = new ArrayList<String>();
  order.add("background");
  order.add("silhouette");
  order.add("hair");
  order.add("eyes");
  order.add("apparel");
  order.add("mouth");
  order.add("mask");
  order.add("weapon");
  order.add("scar");
  
  for(int i = 0; i < totalPopulation; i++){
    ArrayList<Rule> rules = new ArrayList<Rule>();
    ArrayList<Layer> layers = new ArrayList<Layer>();
    for(String featureName: order){
      ArrayList<Layer> features = data.getSet(featureName);
      Layer layer = getRandomFeature(features);
      for(int x = 0; x < layer.rules.length; x++){
        rules.add(Rule(layer.rules[i].split(";")));
      }
    }
  }
}

Layer getRandomFeature(ArrayList<Layer> features){
  return features.get(Math.round(random(features.size())));
}

// PIPELINE

// LOOP 1000 times or however many images to generate
  // initialise new empty set of rules
  // initialise empty array of layers 
  // for each type of feature to be selected
    // select feature based on current rules
    // add new feature's rules to collection
  // draw all images on top of each other in order
  // export the image to a file
  
