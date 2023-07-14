function selectStoreItem(){
	
	//find the closest non selected store item and select it
	
	var best = noone; 
	var bestd = 1000000;
	
	with(objStoreItem){
		//if(!selected){
			var d = point_distance(player.xCur, player.yCur, x, y);
			if(d < bestd){
				bestd = d;
				best = id;
			}
		//}
	}
	
	if(best != noone){
		with(objStoreItem){ selected = noone; }
		best.selected = true;
	}

}