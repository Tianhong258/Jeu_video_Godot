extends Node2D

@onready var UI = $UI

# Called when the node enters the scene tree for the first time.
func _ready():
	set_xp(0)
	set_max_xp(get_player().get_max_xp())
	set_niveau(1)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func get_player():
	return $Area2D/Player

func set_xp(xp):
	UI.xp = xp

func set_max_xp(max_xp):
	UI.max_xp = max_xp

func set_niveau(niveau):
	UI.niveau = niveau
	
func gain_xp(value):
	get_player().gain_xp(value)
