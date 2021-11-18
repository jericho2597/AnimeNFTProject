class Layer {
   String imageFilePath;
   String code;
   String layerClass; // the class that this layer belongs to e.g. Hair, Eyes etc
   String[] attributes; // an array of the attributes this feature possess.
   String[] rules;
   
   public Layer(String imageFilePath, String code, String layerClass, String[] attributes, String[] rules){
     this.imageFilePath = imageFilePath;
     this.code = code;
     this.layerClass = layerClass;
     this.attributes = attributes;
     this.rules = rules;
   }
}
