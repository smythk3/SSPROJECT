var x = 180;
var y = 180;
var xspeed = 25;
var yspeed = 50;

var hello = 0;
var value = 255;
var obama;
var trump;

function preload() {
  trump = loadImage("trump.jpg");
  
  function preload() {
  obama = loadImage("imageobama.jpg");
  

}


}

function setup() {
  createCanvas(800,500);
}

function draw() {
  background(obama,0,0);

	//distance from center of the screen
	var d = dist(800/2, 500/2, mouseX, mouseY);

  	fill (hello);
  	ellipse (x, y, 50,50);

  	//bouncing horizontally
 	 x = x + xspeed;
  	
  	 if (x > 800 || x < 10)  {
     	xspeed = -xspeed;
  	}

  	//bouncing veritcally
  	y = y + yspeed;

  	if (y > 500 || y < 0) {
	 	  yspeed = -yspeed;
  	}


for(var x=20; x<=windowWidth; x+=30) {
    for(var y = 10; y <= windowHeight; y += 30) {
      fill(random(150, 40, 150), random(100, 150, 200), random(90, 50, 20));
      ellipse(x, y, random(5,15));
    }
  }
  
  if(mouseIsPressed) {
    background(trump,0,0); //this works fine
  }
  
  if (keyIsPressed) {
    background(obama, 0,0); //this is not working properly?
  }
  
  textSize(100);
  text("michelle 2020", 30,100);
  fill(0,102,153); //have the text appear after something is done.. or have it wiggle off the screen
}
