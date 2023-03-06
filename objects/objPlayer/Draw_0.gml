if(gameOverTime > 0){ return; }

//if(coyoteTime > 0){ draw_rectangle(x-40, y-10, x+40, y+1, false); }



draw_self();
if(item == imgPlayerSunbrella){
	var f = 0;
	if(yIn > 0){ f = 1; }
	draw_sprite_stretched(item, f, x - 30, y - 80, 60, 60);
}

if(item == imgPlayerBook){
	var xm = facing == 1 ? -15 : - 60;
	draw_sprite_stretched(item, 0, x + xm, y - 70, 60, 60);
}

if(item == imgPlayerHammer){
	var xm = facing == 1 ? -15 : - 60;
	
	var r = floor(current_time / 50) % 5;
	draw_sprite_ext(item, 0, x, y - 10, 4, 4, r, c_white, 1);
}