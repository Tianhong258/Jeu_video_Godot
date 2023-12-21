extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	#var carte_skill1 = load("res://UI/carte_skill.tscn").instantiate()
	#var carte_skill2 = load("res://UI/carte_skill.tscn").instantiate()
	#var carte_skill3 = load("res://UI/carte_skill.tscn").instantiate()
	#carte_skill1.skill = Skill.new("res://Skills/placeholder.png","Skill1","C'est un beau premier skill")
	#carte_skill2.skill = Skill.new("res://Skills/placeholder2.png","Skill2","C'est un beau deuxieme skill")
	#carte_skill3.skill = Skill.new("res://Skills/placeholder3.png","Skill3","C'est un beau troisieme skill")
	#var listeSkills:HBoxContainer =  $Panel/MarginContainer/VBoxContainer/ListeSkills
	#listeSkills.add_child(carte_skill1)
	#listeSkills.add_child(carte_skill2)
	#listeSkills.add_child(carte_skill3)
	
	pass # Replace with function body.

func initialize(liste_skills):
	var listeSkills:HBoxContainer =  $Panel/MarginContainer/VBoxContainer/ListeSkills
	for s in liste_skills:
		var carte_skill = load("res://UI/carte_skill.tscn").instantiate()
		carte_skill.skill = s
		listeSkills.add_child(carte_skill)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func choix(skill_choisi:Skill):
	$Panel/MarginContainer/VBoxContainer/TitrePopup.text = "skill choisi : " + skill_choisi.name
	get_parent().skill_choisi(skill_choisi)
	queue_free()
