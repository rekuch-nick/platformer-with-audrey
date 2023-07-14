
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

*/

var xl = player.xCur;
var yl = player.yCur;

if(player.tappedDown){ player.yCur += 200; }
if(player.tappedUp){ player.yCur -= 200; }
if(player.tappedRight){ player.xCur += 200; }
if(player.tappedLeft){ player.xCur -= 200; }

while(player.xCur > 1366){ player.xCur -= 1366; }
while(player.xCur < 0){ player.xCur += 1366; }
while(player.yCur > 768){ player.yCur -= 768; }
while(player.yCur < 0){ player.yCur += 768; }

if(player.xCur != xl || player.yCur != yl){
	selectStoreItem();
}