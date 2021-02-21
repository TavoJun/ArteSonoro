import ddf.minim.*;

Minim minim;
AudioPlayer player;
AudioPlayer player1;
AudioPlayer player2;
AudioPlayer player3;

void setup(){
  size(800,600);
  minim = new Minim(this);
  player  = minim.loadFile("Silencio1.mp3");
  player1 = minim.loadFile("Silencio2.mp3");
  player2 = minim.loadFile("Silencio3.mp3");
  player3 = minim.loadFile("Silencio4.mp3");
}


void draw(){
  background(0);
  stroke(255);
  

  textSize(32);
  fill(0, 102, 153);
  text("A Casa", 20, 50);
  text("Cancha", width-150, 50);
  text("Mi Hijo", width-150, height-50);
  text("Cuarto", 20, height-50);
  
  textSize(20);
  fill(255);
 

  
  
  float dx1 = dist(0, 0, mouseX, 0);
  float dy1 = dist(0, 0, 0, mouseY);
  float volumena1=map(dx1,0,width,0,10);
  float volumena2=map(dy1,0,height,0,10);
  float volumenA= -30+(volumena1+volumena2); 
  player.setGain (volumenA);//digitallove
  //println("VolumenA=",volumenA);

  
  
  float dx2 = dist(width, 0, mouseX, 0);
  float dy2 = dist(0, 0, 0, mouseY);
  float volumenb1=map(dx2,0,width,0,10);
  float volumenb2=map(dy2,0,height,0,10);
  float volumenB= -30+(volumenb1+volumenb2); 
  player1.setGain (volumenB);//digitallove
  //println("VolumenB=",volumenB);
  
  
  float dx3 = dist(0, 0, mouseX, 0);
  float dy3 = dist(0, height, 0, mouseY);
  float volumenc1=map(dx3,0,width,0,10);
  float volumenc2=map(dy3,0,height,0,10);
  float volumenC= -30+(volumenc1+volumenc2); 
  player2.setGain (volumenC);//digitallove
  //println("VolumenC=",volumenC);
  
  
  float dx4 = dist(width, 0, mouseX, 0);
  float dy4 = dist(0, height, 0, mouseY);
  float volumene1=map(dx4,0,width,0,10);
  float volumene2=map(dy4,0,height,0,10);
  float volumenE= -30+(volumene1+volumene2); 
  player3.setGain (volumenE);//digitallove
  println("VolumenE=",volumenE);  
  
  if(player.isPlaying()){
    //text("Presiona una tecla para Stop",10,20);
  }else{
    //text("Presiona una tecla para play",10,20);
  }
}

void keyPressed(){
  if(player.isPlaying()){
    player.pause();
    player1.pause();
    player2.pause();
    player3.play();
  }else{
    player.play();
    player1.play();
    player2.play();
    player3.play();
  }

}
