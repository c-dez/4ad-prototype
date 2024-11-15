extends Node


var character_name:String = ""
var race:String = ""
var character_class:String = ""
var xp:int = 0
var hp_current:int = 0
var hp_max:int = 0
var hp_base:int = 8

var dmg:String
var ac:int

var atk_bonus:int = 0
var lvl:int = 1

# _as == ability score
var str_as:int = 15
var int_as:int = 8
var wis_as:int = 10
var dex_as:int = 13
var con_as:int = 14
var cha_as:int = 12

var str_bonus:int

var body := EquipmentTables.armor.leather_armor
var main_hand := EquipmentTables.swords.short_sword
var off_hand := EquipmentTables.armor.shield

var backpack_size:int = 10
# var backpack:Array = [

# ]

func _ready():

	pass

func get_ac()->int:
	# revisa si esta shield equipado en off hand y agrega el ac al total ac, si no solo regresa el ac de armadura
	if off_hand.name == "shield" :
		return body.ac + off_hand.ac
	else:
		return body.ac
	
func get_str_bonus()->int:
	return CharacterTablesSingleton.ability_score_bonus(str_as)

func get_atk_bonus()->int:
	return CharacterTablesSingleton.atk_bonus_fighter(lvl)

	
	
