extends Panel


@export var skill:Skill

# Called when the node enters the scene tree for the first time.
func _ready():
	$OrgaVerticale/NomSkill.text = skill.name
	$OrgaVerticale/RichTextLabel.text = skill.description
	var skillImg:TextureRect = $OrgaVerticale/ImageSkill
	skillImg.texture = load(skill.img)
	var style
	match skill.rarity:
		Skill.RARITY.COMMON:
			style = load("res://UI/common.tres")
		Skill.RARITY.UNCOMMON:
			style = load("res://UI/uncommon.tres")
		Skill.RARITY.RARE:
			style = load("res://UI/rare.tres")
		Skill.RARITY.EPIC:
			style = load("res://UI/epic.tres")
		Skill.RARITY.LEGENDARY:
			style = load("res://UI/legendary.tres")
	add_theme_stylebox_override ("panel", style )
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	get_parent_control().get_parent_control().get_parent_control().get_parent_control().get_parent_control().choix(skill) # Replace with function body.
