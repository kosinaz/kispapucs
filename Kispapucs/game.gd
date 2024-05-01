extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if $Doors/Door/AnimationPlayer.current_animation == "":
		if abs($Doors.position.x - $Skye.position.x) < 100:
			if $Doors/Door/AnimationPlayer.assigned_animation != "open":
				$Doors/Door/AnimationPlayer.play("open")
				$Doors/Door2/AnimationPlayer.play("open")
		elif $Doors/Door/AnimationPlayer.assigned_animation == "open":
			$Doors/Door/AnimationPlayer.play("close")
			$Doors/Door2/AnimationPlayer.play("close")
	if Input.is_action_pressed("ui_cancel"):
		get_tree().quit()
