extends Node

var sheet := FighterSingleton


var ac:int # = sheet.body.ac


func _ready() -> void:
	ac = sheet.body.ac
	

	
	pass

func _physics_process(_delta: float) -> void:

	if Input.is_action_just_pressed("Key_e"):
		print(sheet.body," " , sheet.main_hand.name)



func attack()->int:
	var result:int
	var _d20:int = d20()
	print("d20: ",_d20, " + atk bonus: ", sheet.atk_bonus, " + str bonus: " , sheet.str_bonus," =")
	result = _d20 + sheet.atk_bonus + sheet.str_bonus
	return result

func d20()->int:
	var result:int
	result = randi_range(1,20)
	return result