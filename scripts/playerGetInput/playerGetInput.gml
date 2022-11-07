function playerGetInput(){
	
	
	xIn = 0;
	yIn = 0; // todo: convert to time to prevent mini drop glitch
	pressedJump = false;
	holdingJump = false;
	releasedJump = false;
	
	if(keyboard_check(vk_left) || keyboard_check(ord("A"))){
		xIn --;
		facing = -1;
	}
	
	if(keyboard_check(vk_right) || keyboard_check(ord("D"))){
		xIn ++;
		facing = 1;
	}
	
	if(keyboard_check(vk_down) || keyboard_check(ord("S"))){
		yIn ++;
	}
	
	if(keyboard_check(vk_up) || keyboard_check(ord("W"))){
		yIn --;
	}
	
	/*
	if(keyboard_check(vk_space)){
		holdingJump = true;
	} else {
		holdingJump = false;
	}*/
	holdingJump = keyboard_check(vk_space);
	pressedJump = keyboard_check_pressed(vk_space);
	
	
	
}