extends Node

class_name SkillList

static var liste_skills:Array:
	get:
		if(liste_skills==[]):
			liste_skills = build_list()
		return liste_skills
	set(value):
		liste_skills = value

static func build_list():
	var liste_a_retourner = []
	liste_a_retourner.append(Skill.new("res://Skills/fireBall.png","Fireball","C'est une boule de feu"))
	liste_a_retourner.append(Skill.new("res://Skills/dragonBreath.png","Dragon Breath","ça souffle du feu wouaw"))
	liste_a_retourner.append(Skill.new("res://Skills/placeholder.png","Tortue","Je suis une tortue !"))
	liste_a_retourner.append(Skill.new("res://Skills/placeholder.png","Tortue","Je suis une tortue !"))
	liste_a_retourner.append(Skill.new("res://Skills/placeholder2.png","Dragon","Je suis un dragon !"))
	liste_a_retourner.append(Skill.new("res://Skills/placeholder3.png","Tigre Mignon","Je suis un tigrou !"))
	liste_a_retourner.append(Skill.new("res://Skills/ligthning.png","Eclairs","Je tire des éclairs"))
	liste_a_retourner.append(Skill.new("res://Skills/poison.png","Poison","Du super poison attentiooon"))
	
	return liste_a_retourner
