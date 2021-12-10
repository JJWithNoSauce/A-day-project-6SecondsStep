extends Area2D

var health = 2

func _on_Goal_body_entered(body):
	if health == 1:
		get_tree().change_scene("res://Scenes/Rooms/Roomsuccess.tscn")
	elif health == 2:
		get_tree().change_scene("res://Scenes/Rooms/Roomsuccessnohit.tscn")


func _on_Player_ui_harm():
	health -= 1
