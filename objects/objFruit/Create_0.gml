event_inherited();

grav = .4;
ySpeed = irandom_range(-8, -4);
xSpeed = irandom_range(4, 12);
if(choose(true, false)){ xSpeed *= -1; }

bounce = 16;

fruitPower = 60 * 5;
coinValue = 0;

spin = false;
pulse = true;