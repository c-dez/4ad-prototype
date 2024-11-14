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

var head := {}
var body := EquipmentTables.armor.leather_armor
var main_hand := EquipmentTables.swords.short_sword
var off_hand := EquipmentTables.armor.shield

var backpack_size:int = 10



var equipment:Dictionary = {
	"head": head,
	"body": body,
	"main_hand": main_hand,
	"0ff_hand": off_hand
}

var backpack:Array = [

]

func _ready():
	atk_bonus = CharacterTablesSingleton.atk_bonus_fighter(lvl)
	str_bonus = CharacterTablesSingleton.ability_score_bonus(str_as)

	# dmg = main_hand.dmg
	pass



	
	
	
