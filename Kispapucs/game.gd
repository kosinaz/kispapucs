extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if abs($Door.position.x - $Skye.position.x) < 50:
		$Door/AnimatedSprite.play("open")
	elif $Door/AnimatedSprite.animation == "open":
		$Door/AnimatedSprite.play("close")
