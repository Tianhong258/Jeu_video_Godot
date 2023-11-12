extends CharacterBody2D
@export var speed = 300.0
@export var nbHits = 1
@export var damage = 5

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	var direction = Vector2(1.0,0.0)
	velocity = direction * speed
	move_and_slide()

func enemy_hit(charge = 1):
	nbHits -= charge
	if nbHits <= 0:
		queue_free()
		
func _on_timer_timeout():
	queue_free()
