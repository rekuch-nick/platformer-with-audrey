draw_self();

var x1 = 200;
var x2 = 1150;

var y1 = 150 + (cursor* 100);
var y2 = y1 + 60;


draw_set_alpha(.5);
draw_rectangle_color(x1, y1, x2, y2, c_yellow, c_yellow, c_yellow, c_yellow, false);
draw_set_alpha(1);


for(var i=0; i<cursorMax; i++){
	var s = forSale[i];
	if(cost[i] > 0){
		s += " $" + string(cost[i]);
	}
	draw_text_transformed(210, 150 + (i * 100), s, 3, 3, 0);
}



draw_text_transformed(0, 0, "$ " + string(player.coins), 4, 4, 0);
draw_text_transformed(330, 30, "What can I get you?", 4, 4, 0);



draw_text_transformed(30, 630, desc[cursor], 3, 3, 0);
