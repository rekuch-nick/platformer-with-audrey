function playerGetInput(){
	
	
	xIn = 0;
	yIn = 0; // todo: convert to time to prevent mini drop glitch
	pressedJump = false;
	holdingJump = false;
	releasedJump = false;
	
	pressedB = false;
	holdingB = false;
	
	if(keyboard_check(vk_left) || keyboard_check(ord("A")) ||
								gamepad_button_check(player.gamepadID, gp_padl) || 
								gamepad_axis_value(player.gamepadID, gp_axislh) < -.5 ){
		xIn --;
		facing = -1;
	}
	
	if(keyboard_check(vk_right) || keyboard_check(ord("D")) ||
								gamepad_button_check(player.gamepadID, gp_padr) || 
								gamepad_axis_value(player.gamepadID, gp_axislh) > .5 ){
	
		xIn ++;
		facing = 1;
	}
	
	if(keyboard_check(vk_down) || keyboard_check(ord("S")) ||
								gamepad_button_check(player.gamepadID, gp_padd) || 
								gamepad_axis_value(player.gamepadID, gp_axislv) > .5 ){
		yIn ++;
	}
	
	if(keyboard_check(vk_up) || keyboard_check(ord("W")) ||
								gamepad_button_check(player.gamepadID, gp_padu) || 
								gamepad_axis_value(player.gamepadID, gp_axislv) < -.5 ){
		yIn --;
	}
	
	/*
	if(keyboard_check(vk_space)){
		holdingJump = true;
	} else {
		holdingJump = false;
	}*/
	
	//holdingJump = keyboard_check(vk_space);
	//pressedJump = keyboard_check_pressed(vk_space);
	
	
	
	
	//
	holdingJump = keyboard_check(vk_space) || gamepad_button_check(player.gamepadID, gp_face1);
	pressedJump = keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(player.gamepadID, gp_face1);
	
	
	
	holdingB = keyboard_check(vk_shift) || gamepad_button_check(player.gamepadID, gp_face2);
	pressedB = keyboard_check_pressed(vk_shift) || gamepad_button_check_pressed(player.gamepadID, gp_face2);
	
	
	
	
	
}