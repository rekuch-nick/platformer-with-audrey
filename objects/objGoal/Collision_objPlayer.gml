if(player.state != "play"){ return; }

if(player.yIn < 0){
	player.state = "next room";
	player.fireworksTime = 120;
}

