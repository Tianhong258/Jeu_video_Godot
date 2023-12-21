extends CanvasLayer

class_name UI

@export var xp:int:
	get:
		return xp
	set(value):
		xp = value
		lb_xp.text = "XP : " + str(xp) + "/" + str(max_xp)
		
@export var max_xp:int:
	get:
		return max_xp
	set(value):
		max_xp = value
		lb_xp.text = "XP : " + str(xp) + "/" + str(max_xp)
@export var niveau:int:
	get:
		return niveau
	set(value):
		niveau = value
		lb_niveau.text = "NV : " + str(niveau)

@onready var lb_xp = $Control/MarginContainer/VBoxContainer/XP
@onready var lb_niveau = $Control/MarginContainer/VBoxContainer/Niveau

@onready var lvl_up_scene = load("res://UI/lvlUp.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	pass

func show_lvl_up(liste_skills):
	var popup = lvl_up_scene.instantiate()
	popup.initialize(liste_skills)
	add_child(popup)

func skill_choisi(Skill):
	get_parent().get_player().skills.append(Skill)
	
	get_parent().unpause()
	get_parent().get_player().check_gain_niveau()
