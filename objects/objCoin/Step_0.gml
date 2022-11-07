image_xscale += dir * .02;
if(image_xscale < -1 && dir < 0){ dir *= -1; }
if(image_xscale > 1 && dir > 0){ dir *= -1; }