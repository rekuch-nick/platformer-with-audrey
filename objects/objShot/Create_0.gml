image_xscale = 2; image_yscale = 2;

moveSpeed = 10;

xSpeed = 0; ySpeed = 0;

var angle = arctan2(player.y - y, player.x - x);
xSpeed = cos(angle) * moveSpeed;
ySpeed = sin(angle) * moveSpeed;

timeCD = 60 * 60;
