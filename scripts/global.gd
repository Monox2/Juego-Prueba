extends Node

var player_current_attack = false

var current_scene = "world" #wolrd cliff_side
var transition_scene = false

var player_exit_cliffside_posx = 223
var player_exit_cliffside_posy = 20
var player_start_posx = 115
var player_start_posy = 136

var game_first_loadin = true

func finish_changescenes():
	print("finish_function")
	print("Transition ", transition_scene)
	if transition_scene == true:
		transition_scene = false
		if current_scene == "world":
			current_scene = "cliff_side"
		else: 
			current_scene = "world"
