extends Node



func atk_bonus_fighter(_lvl:int)->int:
	match _lvl:
		1:
			return 1
		2, 3:
			return 2
		4:
			return 3
		5, 6:
			return 4
		_:
			return 0
			

func ability_score_bonus(_ability_score:int)->int:
	match _ability_score:
		1, 2, 3:
			return -3
		4, 5:
			return -2
		6, 7, 8:
			return -1
		9,10,11,12:
			return 0
		13, 14, 15:
			return 1
		16, 17:
			return 2
		18, 19:
			return 3
		_:
			return 4

var level_xp:Dictionary ={
	"lvl_2_cap": 2000,
	"lvl_3_cap": 4000,
	"lvl_4_cap": 8000,
	"lvl_5_cap": 16000
}


func check_lvl_xp(lvl:int, xp:int)->void:
	if lvl == 1 and xp >= level_xp["lvl_2_cap"]:
		xp -= level_xp["lvl_2_cap"]
		lvl = 2
	elif lvl == 2 and xp >= level_xp["lvl_3_cap"]:
		xp -= level_xp["lvl_3_cap"]
		lvl = 3
	elif lvl == 3 and xp >= level_xp["lvl_4_cap"]:
		xp -= level_xp["lvl_4_cap"]
		lvl = 4
	elif lvl == 4 and xp >= level_xp["lvl_5_cap"]:
		xp -= level_xp["lvl_5_cap"]
		lvl = 5
	elif lvl == 5 and xp >= 32000:
		xp -= 32000
		lvl = 6