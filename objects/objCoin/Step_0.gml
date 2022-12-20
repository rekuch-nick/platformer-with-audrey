do{
	image_xscale += dir * .02;
} until ( abs(image_xscale) > .05 );
if(image_xscale < -1 && dir < 0){ dir *= -1; }
if(image_xscale > 1 && dir > 0){ dir *= -1; }