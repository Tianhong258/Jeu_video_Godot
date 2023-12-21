extends Resource


class_name Skill

@export var img = "res://Skills/placeholder.png"
@export var name = "PlaceHolder Skill"
@export var description = "ça fait pew pew"
@export var rarity = RARITY.COMMON

enum RARITY {COMMON,UNCOMMON,RARE,EPIC,LEGENDARY}

func _init(_skillImg,_skillName,_skillDescription,_rarity:RARITY = RARITY.COMMON):
	img = _skillImg
	name = _skillName
	description = _skillDescription
	rarity = _rarity
