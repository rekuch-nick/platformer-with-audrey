image_xscale = 4; image_yscale = 4;
depth = -100;
gamepadCheck();


//in put vars
xIn = 0;
yIn = 0;
pressedJump = false;
holdingJump = false;
releasedJump = false;
pressedB = false;
holdingB = false;

//movement vars
xSpeed = 0;
ySpeed = 0;
xPush = 0;
yPush = 0;
walkSpeed = 6;
onLadder = false;

isPlayer = true;
onPlat = noone;
onBreak = noone;

// jumping vars
jumpPow = -16;
jumps = 2;
jumpsMax = 2;
coyoteTime = 0;

//bump vars
width = 24;
head = -60;
facing = 1;

hurtTime = 0;

coins = 0;

landingFrame = false;
beingShocked = false;


state = "play";
fireworksTime = 0;
nextRoom = noone;

item = objPlatformTemp;

zebAlpha = .2;
zebDir = 1;
