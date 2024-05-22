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
		if not $Cycle.visible:
			$AnimatedSprite.play("right")
		else:
			$Cycle.flip_h = false
		$AnimatedSprite.flip_h = false
	elif Input.is_action_pressed("ui_left"):
		position.x -= 300 * delta
		if not $Cycle.visible:
			$AnimatedSprite.play("right")
		else:
			$Cycle.flip_h = true
		$AnimatedSprite.flip_h = true
	else:
		$AnimatedSprite.play("default")
	if Input.is_action_pressed("ui_up"):
		if $Cycle.visible:
			position.y -= 300 * delta
	elif Input.is_action_pressed("ui_down"):
		if $Cycle.visible:
			position.y += 300 * delta
		
