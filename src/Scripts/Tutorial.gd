extends Node2D


# Declare member variables here. Examples:
var acabo_cancion = false
var segunda_cancion = preload("res://Assets/Audio/Musica/Game Jam Drums 1.wav")
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _siguiente_nivel():
	get_tree().change_scene("res://Escenas/Nivel_3.tscn")
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if !acabo_cancion:
		if !$AudioStreamPlayer.playing:
			acabo_cancion = true
			$AudioStreamPlayer.stream = segunda_cancion
			$AudioStreamPlayer.volume_db = 1
			$AudioStreamPlayer.play()
			
		
