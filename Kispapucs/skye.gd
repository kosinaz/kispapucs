extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ui_right"):
		position.x += 300 * delta
		$AnimatedSprite.play("right")
		$AnimatedSprite.flip_h = false
	elif Input.is_action_pressed("ui_left"):
		position.x -= 300 * delta
		$AnimatedSprite.play("right")
		$AnimatedSprite.flip_h = true
	else:
		$AnimatedSprite.play("default")
		
