if(player.state != "play"){ return; }

shotCD --;
if(shotCD < 1){
	shotCD = shotCDMax;
	
	var xm = sprite_width / 2;
	var l = instance_create_depth(x + xm, y + sprite_height, -100, objLightning);
	l.image_xscale = image_xscale * 3;
	l.image_yscale = image_yscale * 3;
}

if(shotCD < shotCDLow){
	image_index = floor(shotCD / 10) % 2;
} else {
	image_index = 0;
}
