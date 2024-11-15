extends Node

var sheet := FighterSingleton




func _ready() -> void:
	

	
	pass

func _physics_process(_delta: float) -> void:

	if Input.is_action_just_pressed("Key_e"):
		print(roll_to_attack())



func roll_to_attack()->int:
	var result:int
	var _d20:int = d20()
	print("d20: ",_d20, " + atk bonus: ", sheet.get_atk_bonus(), " + str bonus: " , sheet.get_atk_bonus()," =")
	result = _d20 + sheet.get_atk_bonus() + sheet.get_str_bonus()
	return result

func d20()->int:
	var result:int
	result = randi_range(1,20)
	return result
	