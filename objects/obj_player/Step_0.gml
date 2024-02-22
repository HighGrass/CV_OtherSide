/// @description Insert description here
// You can write your code in this editor

var _up = keyboard_check(vk_up) or keyboard_check(ord("W"))
var _down = keyboard_check(vk_down) or keyboard_check(ord("S"))
var _right = keyboard_check(vk_right) or keyboard_check(ord("D"))
var _left = keyboard_check(vk_left) or keyboard_check(ord("A"))

var _xinput = _right - _left
var _yinput = _down - _up

if(_xinput != 0){
	show_debug_message("movingX")
}

move_and_collide(_xinput * player_speed, _yinput * player_speed)
