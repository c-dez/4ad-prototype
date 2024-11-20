extends TileMapLayer

var mouse_pos
@onready var icon : = preload("res://icon.svg")
func _ready() -> void:
	pass

func _process(_delta: float) -> void:
	mouse_cursor()	


	pass

func mouse_cursor()->void:
	mouse_pos = local_to_map(get_local_mouse_position())
	clear()
	set_cell(mouse_pos,0,Vector2i(0,0),0)

	pass