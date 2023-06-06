
camera_set_view_target(view_camera[0], id);

txt = "What can I get you?";


/*
if(player.pressedJump && player.coins >= cost[cursor]){
	player.coins -= cost[cursor];
	
	if(forSale[cursor] == "Heart Taco"){ 
		player.hpMax ++; 
		player.hp = player.hpMax; 
	}
	if(forSale[cursor] == "Casual Sunbrella"){ 
		player.item = imgPlayerSunbrella;
	}
	
	if(forSale[cursor] == "Metro Phone Book"){ 
		player.item = imgPlayerBook;
	}
	
	if(forSale[cursor] == "Overactive Hammer"){ 
		player.item = imgPlayerHammer;
	}
	
	
	instance_destroy();
	player.state = "play";
}
