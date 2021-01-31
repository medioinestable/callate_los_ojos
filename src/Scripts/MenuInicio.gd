extends Control


# Declare member variables here. Examples:
# var a = 2
var state_menu = -1
onready var menu_ui = $menu_ui
onready var boton_iniciar = $menu_ui/boton_iniciar_ui
onready var boton_salir = $menu_ui/boton_salir_ui

var mouse_salir = false


# Called when the node enters the scene tree for the first time.
func _ready():	
	boton_iniciar.grab_focus()


func _on_boton_iniciar_ui_pressed():
	print("inicia")
	$AudioStreamPlayer.stop()
	$Enter.play()
	get_tree().change_scene("res://Escenas/Tutorial.tscn")


func _on_boton_salir_ui_pressed():
	print("sale")
	get_tree().quit()
	


