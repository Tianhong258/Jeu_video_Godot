extends CharacterBody2D

var bulle = preload("res://Armes/bulle.tscn")
var vague = preload("res://Armes/vague.tscn")
const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	


	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var directionx = Input.get_axis("ui_left", "ui_right")
	if directionx:
		velocity.x = directionx * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	var directiony = Input.get_axis("ui_up", "ui_down")
	if directiony:
		velocity.y = directiony * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)

	move_and_slide()

func _ready():
	attack()
	
func attack():
	var timerAtckBulle := Timer.new()
	timerAtckBulle.wait_time = 0.5
	timerAtckBulle. one_shot = false
	timerAtckBulle.timeout.connect(_on_attack_timer_bulle_timeout)
	add_child(timerAtckBulle)
	timerAtckBulle.start()
	
	var timerAtckVague := Timer.new()
	timerAtckVague.wait_time = 1
	timerAtckVague. one_shot = false
	timerAtckVague.timeout.connect(_on_attack_timer_vague_timeout)
	add_child(timerAtckVague)
	timerAtckVague.start()
	
func _on_attack_timer_bulle_timeout():

	var attaque = bulle.instantiate()
	attaque.position = self.position
	add_child(attaque)
	
func _on_attack_timer_vague_timeout():

	var attaque1 = vague.instantiate()
	var attaque2 = vague.instantiate()
	attaque1.position = self.position
	attaque2.position = self.position
	attaque1.direction = Vector2(0.0,1.0)
	attaque2.direction = Vector2(0.0,-1.0)
	attaque1.rotate180()
	add_child(attaque1)
	add_child(attaque2)
