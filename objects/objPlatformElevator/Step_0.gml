if(player.state != "play"){ return; }


if(player.onPlat != noone){
	if(player.onPlat == id){
		if(y > yMin){
			player.y -= moveSpeed;
			y -= moveSpeed;
			//return
		}
		return;
	}
}

if(y < yStart){ y ++; }