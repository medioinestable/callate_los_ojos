extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export(int) var player_number
onready var ray = $RayCast2D

var inputs = {
	'ui_up': Vector2.UP,
	'ui_down': Vector2.DOWN,
	'ui_left': Vector2.LEFT,
	'ui_right': Vector2.RIGHT
}

var inputs_p2 = {
	'2p_up': Vector2.UP,
	'2p_down': Vector2.DOWN,
	'2p_left': Vector2.LEFT,
	'2p_right': Vector2.RIGHT
}


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _unhandled_input(event):
	if player_number == 1:
		for dir in inputs.keys():
			if event.is_action_pressed(dir):
				move(dir)
	else:
		for dir in inputs_p2.keys():
			if event.is_action_pressed(dir):
				move(dir)

func move(dir):
	var vector_pos
	if player_number == 1:
		vector_pos = inputs[dir] * 32
	else:
		vector_pos = inputs_p2[dir] * 32
	
	ray.cast_to = vector_pos
	ray.force_raycast_update()
	if !ray.is_colliding():
		position += vector_pos
