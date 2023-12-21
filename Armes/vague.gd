extends CharacterBody2D
@export var speed = 500.0
@export var nbHits = 3
@export var direction:Vector2
@export var damage = 5

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func rotate180():
	rotation_degrees = 180

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	velocity = direction * speed
	move_and_slide()

func enemy_hit(charge = 1):
	nbHits -= charge
	if nbHits <= 0:
		queue_free()
		
func _on_timer_timeout():
	queue_free()
