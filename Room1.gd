extends Node2D

func _ready():
	$Fade_ani.play("Fade_out")
	timer()
	$Audio/Ambient.play()


func _on_Health_fade():
	$Fade_ani.play("Fade_in")
	yield(get_tree().create_timer(1), "timeout")
	get_tree().change_scene("res://Scenes/Rooms/Room ends.tscn")

func timer():
	yield(get_tree().create_timer(50), "timeout")
	$Audio/countdown.play()
	yield(get_tree().create_timer(1), "timeout")
	$Audio/countdown.play()
	yield(get_tree().create_timer(1), "timeout")
	$Audio/countdown.play()
	yield(get_tree().create_timer(1), "timeout")
	$Audio/countdown.play()
	yield(get_tree().create_timer(1), "timeout")
	$Audio/countdown.play()
	yield(get_tree().create_timer(1), "timeout")
	$Audio/countdown.play()
	yield(get_tree().create_timer(1), "timeout")
	$Audio/countdown.play()
	yield(get_tree().create_timer(1), "timeout")
	$Audio/countdown.play()
	yield(get_tree().create_timer(1), "timeout")
	$Audio/countdown.play()
	yield(get_tree().create_timer(1), "timeout")
	$Audio/countdown.play()
	get_tree().change_scene("res://Scenes/Rooms/Room ends2.tscn")
