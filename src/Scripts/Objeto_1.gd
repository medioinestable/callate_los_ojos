extends Node2D


# Declare member variables here. Examples:
onready var personaje_script = $'../Personaje_1'
onready var personaje_script_2 = $'../Personaje_2'
export(Texture) var sprite_textura


# Called when the node enters the scene tree for the first time.
func _ready():
	$Sprite.texture = sprite_textura


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_body_entered(body):
	print(body.name)
	if !personaje_script_2.tiene_objeto_2 && body.name == 'Personaje_2_k':
		body.get_children()[2].show()
		$'.'.queue_free()
		personaje_script_2.agarra_objeto_2($Sprite.texture)
		
	if !personaje_script.tiene_objeto && body.name == 'Personaje_1_k':
		body.get_children()[2].show()
		$'.'.queue_free()
		personaje_script.agarra_objeto($Sprite.texture)
	
	
