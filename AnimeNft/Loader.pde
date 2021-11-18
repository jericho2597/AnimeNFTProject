class Loader {
 
  public ArrayList<Layer> SilhouetteLayers = new ArrayList<Layer>();
  public ArrayList<Layer> HairLayers = new ArrayList<Layer>();
  public ArrayList<Layer> EyesLayers = new ArrayList<Layer>();
  
  void loadAllHair() {
    // One line per hair layer to be loaded into collection
    
    // EXAMPLE
    // loadHair("some_file_path", "h1", new String[]{"happy", "blonde"}, new String[]{"eyes;happy;1.0;"});
  }
  
  void loadAllEyes() {
    // One line per hair layer to be loaded into collection
    
    // EXAMPLE
    // loadEyes("some_file_path", "e1", new String[]{"blue", "angry"}, new String[]{"mouth;angry;0.9;"});
  }
  
  void loadAllSilhouette() {
    // One line per hair layer to be loaded into collection
    
    // EXAMPLE
    // loadSilhouette("some_file_path", "s1", new String[]{}, new String[]{"eyes;happy;0.5;"});
  }
  
  public Loader(){
      loadAllHair();
      loadAllEyes();
      loadAllSilhouette();
  }
  
  void loadSilhouette(String imageFilePath, String code, String[] attributes, String[] rules){
    SilhouetteLayers.add(new Layer(imageFilePath, code, "silhouette", attributes, rules));
  }
  
  void loadHair(String imageFilePath, String code, String[] attributes, String[] rules){
    HairLayers.add(new Layer(imageFilePath, code, "hair", attributes, rules));
  }
  
  void loadEyes(String imageFilePath, String code, String[] attributes, String[] rules){
    EyesLayers.add(new Layer(imageFilePath, code, "eyes", attributes, rules));
  }
}
