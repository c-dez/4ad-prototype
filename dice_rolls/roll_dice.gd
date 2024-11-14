extends Node
class_name RollDice


func roll_dice(_dice_type:int)->int:
	var result:int
	var dice_type := _dice_type

	result = randi_range(1, dice_type)
	

	return result