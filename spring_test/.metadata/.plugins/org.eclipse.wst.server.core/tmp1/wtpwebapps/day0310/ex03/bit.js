function nextRandomInteger(limit){
	return Math.round( Math.random() * limit );
}

var alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

function randomAlphabet(){
	return alphabet.charAt(nextRandomInteger(25));
}

function randomSpeed(maxSpeed){
	return Math.random()*maxSpeed - Math.random()*maxSpeed;
}

var canvasWidth = 700;
var canvasHeigth = 500;

function MovingText(){
	this.x = nextRandomInteger(canvasWidth);
	this.y = nextRandomInteger(canvasHeigth);
	
	this.vX = randomSpeed(10);
	this.vY = randomSpeed(10);
	
	this.h1 = document.createElement("h1");
	this.h1.innerHTML = randomAlphabet();
	this.h1.style.position = "absolute";
	
	//this.h1.style.left = this.x + 'px';
	//this.h1.style.top = this.y + 'px';
	
	document.body.appendChild(this.h1);
	
}

MovingText.prototype.move = function(){
	
	if(this.x > canvasWidth || this.x < 0){
		this.vX = this.vX * -1;
	}
	
	if(this.y > canvasHeigth || this.y < 0){
		this.vY = this.vY * -1;
	}
	
	this.x = this.x + this.vX;
	this.y += this.vY;
	
	this.h1.style.left = this.x + 'px';
	this.h1.style.top = this.y + 'px';
	
}
