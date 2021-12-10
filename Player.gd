extends KinematicBody2D

var tile = 24
var speed = 1
export var health = 2

var allow_move = 0

var l = 0
var r = 0
var u = 0
var d = 0

var ani = "idle"
signal ui_harm

func _ready():
	timer()
	
func _physics_process(delta):
	$Player_Ani.animation = "idle"
	if Input.is_action_just_pressed("Proceed") && $Ray_colR.is_colliding() != true:
		if allow_move == 0:
			r += tile
			health -= 1
			health_drain()
		elif r > tile:
			pass
		else:
			allow_move = 0
			r += tile
			move_ani()
			timer()
	if Input.is_action_just_pressed("move_right") && $Ray_colR.is_colliding() != true:
		if allow_move == 0:
			r += tile
			health -= 1
			health_drain()
		elif r > tile:
			pass
		else:
			allow_move = 0
			r += tile
			move_ani()
			timer()
	if Input.is_action_just_pressed("move_left") && $Ray_colL.is_colliding() != true:
		if allow_move == 0:
			l += tile
			health -= 1
			health_drain()
		elif l > tile:
			pass
		else:
			allow_move = 0
			l += tile
			move_ani()
			timer()
	if Input.is_action_just_pressed("move_up") && $Ray_colU.is_colliding() != true:
		if allow_move == 0:
			u += tile
			health -= 1
			health_drain()
		elif u > tile:
			pass
		else:
			allow_move = 0
			u += tile
			move_ani()
			timer()
	if Input.is_action_just_pressed("move_down") && $Ray_colD.is_colliding() != true:
		if allow_move == 0:
			d += tile
			health -= 1
			health_drain()
		elif d > tile:
			pass
		else:
			allow_move = 0
			d += tile
			move_ani()
			timer()
	#preventdiagmove
	if d > 1 && l > 1:
		if $Ray_colDL.is_colliding() == true:
			d -= tile
			l -= tile
	if d > 1 && r > 1:
		if $Ray_colDR.is_colliding() == true:
			d -= tile
			r -= tile
	if u > 1 && l > 1:
		if $Ray_colUL.is_colliding() == true:
			u -= tile
			l -= tile
	if u > 1 && r > 1:
		if $Ray_colUR.is_colliding() == true:
			u -= tile
			r -= tile
	
	moving()
	
func moving():
	if r != 0:
		$Player_Ani.animation = ani
		global_position.x += speed
		r -= speed
	if l != 0:
		$Player_Ani.animation = ani
		global_position.x -= speed
		l -= speed
	if u != 0:
		$Player_Ani.animation = ani
		global_position.y -= speed
		u -= speed
	if d != 0:
		$Player_Ani.animation = ani
		global_position.y += speed
		d -= speed
		
func col_check():
	if $Ray_col.is_colliding:
			pass
			
func timer():
	if allow_move == 0:
			yield(get_tree().create_timer(1), "timeout")
			print("sec passed")
			$Audioclock/Tick1.play()
			yield(get_tree().create_timer(1), "timeout")
			print("sec passed")
			$Audioclock/Tick1.play()
			yield(get_tree().create_timer(1), "timeout")
			print("sec passed")
			$Audioclock/Tick1.play()
			yield(get_tree().create_timer(1), "timeout")
			print("sec passed")
			$Audioclock/Tick1.play()
			yield(get_tree().create_timer(1), "timeout")
			print("sec passed")
			$Audioclock/Tick1.play()
			yield(get_tree().create_timer(1), "timeout")
			print("sec passed : allowed move")
			$Audioclock/Tick2.play()
			
			allow_move = 1
			
func health_drain():
	print("health drained")
	ani = "Harm"
	emit_signal("ui_harm")
	$Audioclock/harm.play()
	yield(get_tree().create_timer(1), "timeout")
	$Audioclock/harm.stop()
	ani = "idle"
func move_ani():
	ani = "Move"
	yield(get_tree().create_timer(1), "timeout")
	ani = "idle"
