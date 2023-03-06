if(gameOverTime > 0){ return; }

draw_text_transformed(0, 0, "$ " + string(coins), 4, 4, 0);

for(var i=0; i<hpMax; i++){
	var f = 0;
	if(hp <= i){ f = 1; }
	draw_sprite_stretched(imgHeartGauge, f, 1000 + i * 40, 0, 40, 40);
}



if(onBreak != noone){
	if(onBreak.object_index == objBlockZeb){	
		
		var f = floor(current_time / 600) % 3;
		//draw_sprite(imgZebraVision, choose(0, 1, 2), 0, 0);
		draw_sprite_ext(imgZebraVision, f, 0, 0, 1, 1, 0, c_white, zebAlpha);
		
		zebAlpha += .01 * zebDir;
		if(zebAlpha >= .9){ zebDir = -1; }
		if(zebAlpha <= .4){ zebDir = 1; }
		
		/*
		var a = irandom_range(1, 400);
		var b = irandom_range(1, 400);
		var txt = "?";
		var s = irandom_range(4, 6);
		draw_text_transformed(a, b, txt, s, s, 0);
		*/
	}
}