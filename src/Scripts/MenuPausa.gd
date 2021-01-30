extends Control


# Declare member variables here. Examples:
# var a = 2
onready var boton_continuar = $menu_pausa_ui/boton_continuar


# Called when the node enters the scene tree for the first time.
func _ready():
	boton_continuar.grab_focus()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_boton_continuar_pressed():
	print('continuar')
	get_tree().paused = false
	$".".hide()


func _on_boton_salir_pressed():
	print('salir')
	get_tree().quit()
