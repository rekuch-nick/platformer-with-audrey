


if(player.tappedUp){ cursor --; }
if(player.tappedDown){ cursor ++; }

if(cursor < 0){ cursor = cursorMax - 1; }
if(cursor >= cursorMax){ cursor = 0; }


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
