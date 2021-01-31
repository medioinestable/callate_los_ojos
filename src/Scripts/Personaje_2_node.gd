extends Node2D


# Declare member variables here. Examples:
# var a = 2
var tiene_objeto_2 = false
#export(Texture) var textura_objeto

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	#$KinematicBody2D/Objeto_1_p.texture = textura_objeto

func agarra_objeto_2(textura_objeto):
	$Personaje_2_k/Objeto_2_p.texture = textura_objeto
	$recolecta.play()
	tiene_objeto_2 = true	
	#print(tiene_objeto_2)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
