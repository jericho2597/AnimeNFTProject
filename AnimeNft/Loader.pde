class Loader {
 
  public ArrayList<Layer> SilhouetteLayers = new ArrayList<Layer>();
  public ArrayList<Layer> HairLayers = new ArrayList<Layer>();
  public ArrayList<Layer> EyesLayers = new ArrayList<Layer>();
  public ArrayList<Layer> ApparelLayers = new ArrayList<Layer>();
  public ArrayList<Layer> MouthLayers = new ArrayList<Layer>();
  public ArrayList<Layer> MaskLayers = new ArrayList<Layer>();
  public ArrayList<Layer> WeaponLayers = new ArrayList<Layer>();
  public ArrayList<Layer> ScarLayers = new ArrayList<Layer>();
  public ArrayList<Layer> BackgroundLayers = new ArrayList<Layer>();
  
  ArrayList<Layer> getSet(String type){
    if(type == "silhouette"){
      return SilhouetteLayers;
    }
    else if(type == "hair"){
      return HairLayers;
    }
    else if(type == "eyes"){
      return EyesLayers;
    }
    else if(type == "apparel"){
      return ApparelLayers;
    }
    else if(type == "mouth"){
      return MouthLayers;
    }
    else if(type == "mask"){
      return MaskLayers;
    }
    else if(type == "weapon"){
      return WeaponLayers;
    }
    else if(type == "scar"){
      return ScarLayers;
    }
    else{
      return BackgroundLayers;
    }
  }
  
  void loadAllSilhouette() {
    // One line per hair layer to be loaded into collection
    
    // EXAMPLE
    // loadSilhouette("some_file_path", "s1", new String[]{}, new String[]{"eyes;happy;0.5;"});
  }

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

  void loadAllApparel() {
    // One line per hair layer to be loaded into collection
    
  }

  void loadAllMouths() {
    // One line per hair layer to be loaded into collection
    
  }

  void loadAllMasks() {
    // One line per hair layer to be loaded into collection
    
  }

  void loadAllWeapons() {
    // One line per hair layer to be loaded into collection
    
  }

  void loadAllScars() {
    // One line per hair layer to be loaded into collection
    
  }

  void loadAllBackgrounds() {
    // One line per hair layer to be loaded into collection
    
  }
  
  public Loader(){
      loadAllSilhouette();
      loadAllHair();
      loadAllEyes();
      loadAllApparel();
      loadAllMouths();
      loadAllMasks();
      loadAllWeapons();
      loadAllScars();
      loadAllBackgrounds();
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

  void loadApparel(String imageFilePath, String code, String[] attributes, String[] rules){
    ApparelLayers.add(new Layer(imageFilePath, code, "apparel", attributes, rules));
  }

  void loadMouth(String imageFilePath, String code, String[] attributes, String[] rules){
    MouthLayers.add(new Layer(imageFilePath, code, "mouth", attributes, rules));
  }

  void loadMask(String imageFilePath, String code, String[] attributes, String[] rules){
    MaskLayers.add(new Layer(imageFilePath, code, "mask", attributes, rules));
  }

  void loadWeapon(String imageFilePath, String code, String[] attributes, String[] rules){
    WeaponLayers.add(new Layer(imageFilePath, code, "weapon", attributes, rules));
  }

  void loadScar(String imageFilePath, String code, String[] attributes, String[] rules){
    ScarLayers.add(new Layer(imageFilePath, code, "scar", attributes, rules));
  }

  void loadBackground(String imageFilePath, String code, String[] attributes, String[] rules){
    BackgroundLayers.add(new Layer(imageFilePath, code, "background", attributes, rules));
  }
}
