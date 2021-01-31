extends Node2D


# Declare member variables here. Examples:
# var a = 2
var tiene_objeto = false
export(NodePath) var nivel

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	#$KinematicBody2D/Objeto_1_p.texture = textura_objeto

func agarra_objeto(textura_objeto):
	$Personaje_1_k/Objeto_1_p.texture = textura_objeto
	tiene_objeto = true	
	#print(tiene_objeto)




func _on_collision_juntar_area_entered(area):
	if $'../Personaje_2'.tiene_objeto_2 && tiene_objeto:	
		print('ganaste!')
		$'../Personaje_2'.tiene_objeto_2 = false
		tiene_objeto = false
		get_node(nivel)._siguiente_nivel()
