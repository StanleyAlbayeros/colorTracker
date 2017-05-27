import processing.video.*;

Capture video;
color targetColor;
float threshold;
String[] cameraList;
void setup(){
  size(640,480);
  cameraList = Capture.list();
  video = new Capture(this, cameraList[0]);
  video.start();
}


void captureEvent(Capture video){
  
  video.read();
}


void draw() {
  println("ayee " + cameraList[0]);
  video.read();
  image(video,0,0);
  
}

/*
  
import processing.video.*;

Capture cam;

void setup() {
  size(640, 480);

  String[] cameras = Capture.list();
  
  if (cameras.length == 0) {
    println("There are no cameras available for capture.");
    exit();
  } else {
    println("Available cameras:");
    for (int i = 0; i < cameras.length; i++) {
      println(cameras[i]);
    }
    
    // The camera can be initialized directly using an 
    // element from the array returned by list():
    cam = new Capture(this, cameras[0]);
    cam.start();     
  }      
}

void draw() {
  if (cam.available() == true) {
    cam.read();
  }
  image(cam, 0, 0);
  // The following does the same, and is faster when just drawing the image
  // without any additional resizing, transformations, or tint.
  //set(0, 0, cam);
}
*/