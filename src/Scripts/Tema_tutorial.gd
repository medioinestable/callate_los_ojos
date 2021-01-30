extends AudioStreamPlayer


# Declare member variables here. Examples:
# var a = 2



# Called when the node enters the scene tree for the first time.
func _ready():
	pass


func audio_pausado():
	$'.'.pitch_scale = 0.8
		
func audio_despausado():
	$".".pitch_scale = 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
