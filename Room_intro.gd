extends Node2D

func _ready():
	timer()

func _process(delta):
	anim()
	
	if Input.is_action_just_pressed("Proceed"):
		get_tree().change_scene("res://Scenes/Rooms/Room1.tscn")
	
func anim():
	$AnimationPlayer.play("moving")
	yield(get_tree().create_timer(1), "timeout")
	
func timer():
	while true:
			yield(get_tree().create_timer(1), "timeout")
			$Audio/Tick1.play()
			yield(get_tree().create_timer(1), "timeout")
			$Audio/Tick1.play()
			yield(get_tree().create_timer(1), "timeout")
			$Audio/Tick1.play()
			yield(get_tree().create_timer(1), "timeout")
			$Audio/Tick1.play()
			yield(get_tree().create_timer(1), "timeout")
			$Audio/Tick1.play()
			yield(get_tree().create_timer(1), "timeout")
			$Audio/Tick2.play()
			$AnimationPlayer2.play("6sec")
			
