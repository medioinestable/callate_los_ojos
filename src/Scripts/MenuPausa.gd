extends Control


# Declare member variables here. Examples:
var escape = -1
onready var boton_continuar = $menu_pausa_ui/boton_continuar
export(NodePath) var current_audio
onready var node_audio = get_node(current_audio)


# Called when the node enters the scene tree for the first time.
func _ready():
	boton_continuar.grab_focus()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _input(ev):
	if Input.is_key_pressed(KEY_ESCAPE):
		
		escape = (escape+1)%2	
		if escape == 0:
			get_tree().paused = true
			$'.'.show()
			$menu_pausa_ui/boton_continuar.grab_focus()
			print(current_audio)
			node_audio.audio_pausado()
		if escape == 1:
			print(escape)
			get_tree().paused = false
			$".".hide()
			node_audio.audio_despausado()
			#current_audio.audio_despausado()

func _on_boton_continuar_pressed():
	print('continuar')
	escape = -1
	get_tree().paused = false
	$".".hide()
	node_audio.audio_despausado()


func _on_boton_salir_pressed():
	print('salir')
	get_tree().quit()
