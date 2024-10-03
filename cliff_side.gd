extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	change_scence()


func _on_cliffside_exitpoint_body_entered(body):
	if body.has_method("player"):
		global.transition_scene = true
	
func _on_cliffside_exitpoint_body_exited(body):
	if body.has_method("player"):
		global.transition_scene = false

func change_scence():
	if global.transition_scene == true:
		#if global.current_scene == "cliff_side":
		get_tree().change_scene_to_file("res://scenes/world.tscn")
		global.finish_changescenes()
		
