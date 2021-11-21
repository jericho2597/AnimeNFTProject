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
    loadSilhouette("layers/silhouette/one.png", "s1", new String[]{}, new String[]{});
    loadSilhouette("layers/silhouette/two.png", "s1", new String[]{}, new String[]{});
  }

  void loadAllHair() {
    // One line per hair layer to be loaded into collection
    
    // EXAMPLE
    loadHair("layers/hair/one.png", "s1", new String[]{}, new String[]{});
    loadHair("layers/hair/two.png", "s1", new String[]{}, new String[]{});
  }
  
  void loadAllEyes() {
    // One line per hair layer to be loaded into collection
    
    // EXAMPLE
    loadEyes("layers/eyes/one.png", "s1", new String[]{}, new String[]{});
    loadEyes("layers/eyes/two.png", "s1", new String[]{}, new String[]{});
  }

  void loadAllApparel() {
    // One line per hair layer to be loaded into collection
    loadApparel("layers/apparel/one.png", "s1", new String[]{}, new String[]{});
    loadApparel("layers/apparel/two.png", "s1", new String[]{}, new String[]{});
    
  }

  void loadAllMouths() {
    // One line per hair layer to be loaded into collection
    loadMouth("layers/mouth/one.png", "s1", new String[]{}, new String[]{});
    loadMouth("layers/mouth/two.png", "s1", new String[]{}, new String[]{});
    
  }

  void loadAllMasks() {
    // One line per hair layer to be loaded into collection
    loadMask("layers/mask/one.png", "s1", new String[]{}, new String[]{});
    loadMask("layers/mask/two.png", "s1", new String[]{}, new String[]{});
    
  }

  void loadAllWeapons() {
    // One line per hair layer to be loaded into collection
    loadWeapon("layers/weapon/one.png", "s1", new String[]{}, new String[]{});
    loadWeapon("layers/weapon/two.png", "s1", new String[]{}, new String[]{});
    
  }

  void loadAllScars() {
    // One line per hair layer to be loaded into collection
    loadScar("layers/scar/one.png", "s1", new String[]{}, new String[]{});
    loadScar("layers/scar/two.png", "s1", new String[]{}, new String[]{});
    
  }

  void loadAllBackgrounds() {
    // One line per hair layer to be loaded into collection
    loadBackground("layers/background/one", "s1", new String[]{}, new String[]{});
    loadBackground("layers/background/two", "s1", new String[]{}, new String[]{});
    
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
    SilhouetteLayers.add(new Layer(imageFilePath, code, "silhouette", attributes, rules, false));
  }
  
  void loadHair(String imageFilePath, String code, String[] attributes, String[] rules){
    HairLayers.add(new Layer(imageFilePath, code, "hair", attributes, rules, false));
  }
  
  void loadEyes(String imageFilePath, String code, String[] attributes, String[] rules){
    EyesLayers.add(new Layer(imageFilePath, code, "eyes", attributes, rules, false));
  }

  void loadApparel(String imageFilePath, String code, String[] attributes, String[] rules){
    ApparelLayers.add(new Layer(imageFilePath, code, "apparel", attributes, rules, false));
  }

  void loadMouth(String imageFilePath, String code, String[] attributes, String[] rules){
    MouthLayers.add(new Layer(imageFilePath, code, "mouth", attributes, rules, false));
  }

  void loadMask(String imageFilePath, String code, String[] attributes, String[] rules){
    MaskLayers.add(new Layer(imageFilePath, code, "mask", attributes, rules, false));
  }

  void loadWeapon(String imageFilePath, String code, String[] attributes, String[] rules){
    WeaponLayers.add(new Layer(imageFilePath, code, "weapon", attributes, rules, false));
  }

  void loadScar(String imageFilePath, String code, String[] attributes, String[] rules){
    ScarLayers.add(new Layer(imageFilePath, code, "scar", attributes, rules, false));
  }

  void loadBackground(String imageFilePath, String code, String[] attributes, String[] rules){
    BackgroundLayers.add(new Layer(imageFilePath, code, "background", attributes, rules, true));
  }
}
