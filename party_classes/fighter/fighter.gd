extends CharacterBody2D

@onready var tile := get_node("../TileMapLayer")

# var direction: Vector2i

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("right"):
		move(Vector2.RIGHT)
	elif  Input.is_action_just_pressed("left"):
		move(Vector2.LEFT)
	elif Input.is_action_just_pressed("up"):
		move(Vector2.UP)
	elif  Input.is_action_just_pressed("down"):
		move(Vector2.DOWN)

func move(direction:Vector2):
	# get current tile
	var current_tile:Vector2i = tile.local_to_map(global_position)
	# geet target tile
	var target_tile:Vector2i = Vector2(
		current_tile.x + direction.x,
		current_tile.y + direction.y
	)
	global_position = tile.map_to_local(target_tile)
	print(target_tile)
