extends CanvasLayer

class_name UI

@export var xp:int
@export var max_xp:int
@export var niveau:int

@onready var lb_xp = $Control/MarginContainer/VBoxContainer/XP
@onready var lb_niveau = $Control/MarginContainer/VBoxContainer/Niveau
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	lb_xp.text = "XP : " + str(xp) + "/" + str(max_xp)
	lb_niveau.text = "NV : " + str(niveau)
