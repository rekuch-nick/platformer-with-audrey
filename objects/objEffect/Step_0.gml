




x += xSpeed;
y += ySpeed;
ySpeed += grav;

image_alpha -= fade;
timeCD --;

if(image_alpha <= 0 || timeCD <= 0){
	instance_destroy();
}