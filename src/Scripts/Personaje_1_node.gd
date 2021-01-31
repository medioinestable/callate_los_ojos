extends Node2D


# Declare member variables here. Examples:
# var a = 2
var tiene_objeto = false
#export(Texture) var textura_objeto

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	#$KinematicBody2D/Objeto_1_p.texture = textura_objeto

func agarra_objeto(textura_objeto):
	$Personaje_1_k/Objeto_1_p.texture = textura_objeto
	tiene_objeto = true	
	#print(tiene_objeto)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
