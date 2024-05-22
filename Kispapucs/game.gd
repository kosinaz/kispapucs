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
			$Lookout2.hide()
			$Doors/Door/AnimationPlayer.play("close")
			$Doors/Door2/AnimationPlayer.play("close")
	if $Doors/Door/AnimationPlayer.assigned_animation == "open" and $Doors/Door/AnimationPlayer.current_animation_position == 0.5:
		$Lookout2.show()
	if Input.is_action_pressed("ui_cancel"):
		get_tree().quit()
	if Input.is_action_just_released("ui_select"):
		if $Skycycle.visible:
			if abs($Skycycle.position.x - $Skye.position.x) < 100:
				$Skycycle.hide()
				$Skye.get_node("Cycle").show()
				$Skye.position.y = 420
		else:
			$Skycycle.position.x = $Skye.position.x
			$Skycycle.show()
			$Skye.get_node("Cycle").hide()
			$Skye.position.y = 520
