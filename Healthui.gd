extends AnimatedSprite

var health = 2
signal fade

func _on_Player_ui_harm():
	health -= 1
	if health == 1:
		$AnimationPlayer.play("Harm")
	if health == 0:
		$AnimationPlayer.play("Harm2")
		emit_signal("fade")


