if(player.state != "play"){ return; }


x += dir * 2;
turnCD --;

if(turnCD < 1){
	turnCD = 120;
	dir *= -1;
}
