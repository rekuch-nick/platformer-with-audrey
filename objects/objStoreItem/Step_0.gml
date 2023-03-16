

if(selected && player.clickMouse){
	
	player.coins -= cost;
	
	if(sprite_index == imgPlayerSunbrella
				|| sprite_index == imgPlayerBook
				|| sprite_index == imgPlayerHammer
				){ 
		
		player.item = sprite_index; }
	
	
	if(sprite_index == imgExitStore){
		player.state = "play";
		with(objScreenShop){ instance_destroy(); }
		with(objStoreItem){ instance_destroy(); }
	}
	
	if(sprite_index == imgPlayerTaco){
		player.hpMax = clamp(player.hpMax + 1, 0, 9);
		player.hp = player.hpMax;
	}
	
	
	instance_destroy();
}
