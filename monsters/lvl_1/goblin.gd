extends Node
class_name Goblin

var ac := 14
var hd:int
var num_of_attacks := "1 weapon"
var dmg := "1d6"
var movement:= 20


func _init(_hd:= 1):
	if _hd <= 1:
		hd = 1
	else:
		hd = _hd -1


