
draw_text_transformed(0, 0, "$ " + string(coins), 4, 4, 0);

if(onBreak != noone){
	if(onBreak.object_index == objBlockZeb){	
		
		draw_sprite(imgZebraVision, choose(0, 1, 2), 0, 0);
		
		/*
		var a = irandom_range(1, 400);
		var b = irandom_range(1, 400);
		var txt = "?";
		var s = irandom_range(4, 6);
		draw_text_transformed(a, b, txt, s, s, 0);
		*/
	}
}