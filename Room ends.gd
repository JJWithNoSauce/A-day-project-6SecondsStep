extends Node2D


func _process(delta):
	anim()
	
	if Input.is_action_just_pressed("reset"):
		get_tree().change_scene("res://Scenes/Rooms/Room1.tscn")
	if Input.is_action_just_pressed("Proceed"):
		get_tree().change_scene("res://Scenes/Rooms/Room1.tscn")
	
func anim():
	$AnimationPlayer.play("moving")
	yield(get_tree().create_timer(1), "timeout")
