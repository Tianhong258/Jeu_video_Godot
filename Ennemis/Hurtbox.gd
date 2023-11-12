extends Area2D


# Called when the node enters the scene tree for the first time.
#func _ready():
	#connect("area_entered", _on_area_entered)
# Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
	
func _on_area_entered2(hitbox: Hitbox) :
	if hitbox == null:
		return
	if owner.has_method("take_damage"):
		owner.take_damage(hitbox.damage)
	
