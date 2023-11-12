extends CharacterBody2D
@export var speed = 40.0
@export var health = 20.0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	var direction =  Vector2(-1.0, -0.0)
	velocity = direction*speed
	move_and_slide()
	
func take_damage(x):
	health -= x
	if health <= 0.0:
		$Hurtbox.queue_free()
		$MosterRabbit.queue_free()
		$Mort.play()
		$Mort.connect("finished",mort)
func mort():
	queue_free()

func _on_hurtbox_area_entered(area):
	if area == null:
		return
	if not area.owner.get("damage") == null:
		take_damage(area.owner.damage)
