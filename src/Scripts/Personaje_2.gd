extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var speed = 200
var target = Vector2(0,0)
var velocity = Vector2()


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func get_input():
	velocity = Vector2()
	
	if Input.is_action_pressed("2p_right"):
		velocity.x += 1
		$AnimatedSprite.animation = 'moviendose'
	if Input.is_action_pressed("2p_left"):
		velocity.x -= 1
		$AnimatedSprite.animation = 'moviendose'
	if Input.is_action_pressed("2p_up"):
		velocity.y -= 1
		$AnimatedSprite.animation = 'moviendose'
	if Input.is_action_pressed("2p_down"):
		velocity.y += 1
		$AnimatedSprite.animation = 'moviendose'
	if velocity == Vector2(0,0):
		$AnimatedSprite.animation = 'idle'
	velocity = velocity.normalized()
	
	move_and_slide(velocity*speed)
		
func _physics_process(delta):
	get_input()
		
	
	
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass