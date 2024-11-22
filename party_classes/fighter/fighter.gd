extends CharacterBody2D

@onready var tile := get_node("../TileMapLayer")
var current_tile_position: = Vector2i(Vector2i.ZERO)
# puntos de movimiento
var movement_points:= FighterSingleton.movement_points
var movement_points_counter:int = 0

func _physics_process(_delta: float) -> void:
	set_current_tile_position()
	move_input()
	pass

func move(direction:Vector2):
	# get current tile
	var current_tile:Vector2i = tile.local_to_map(global_position)
	# get target tile
	var target_tile:Vector2i = Vector2(
		current_tile.x + direction.x,
		current_tile.y + direction.y
	)
	global_position = tile.map_to_local(target_tile)
	movement_points_manager(movement_points)

func set_current_tile_position()->void:
	current_tile_position = tile.local_to_map(global_position)

func move_input()->void:
	if movement_points_counter < movement_points:		
		if Input.is_action_just_pressed("right"):
			move(Vector2.RIGHT)
		elif  Input.is_action_just_pressed("left"):
			move(Vector2.LEFT)
		elif Input.is_action_just_pressed("up"):
			move(Vector2.UP)
		elif  Input.is_action_just_pressed("down"):
			move(Vector2.DOWN)
	else:
		return

# funcion para detectar las casillas que rodean
# por ejemplo
# current_pos (5,5) debe detectar casillas ()

func movement_points_manager(_movement_points:int)->void:
	# funcion para moverse un numero limitado de veces / movement_points points
	# poder ejecutar la funcion move un numero de veces igual a _movement_points
	if movement_points_counter < _movement_points:
		movement_points_counter +=1
		print(movement_points_counter)		
	else:
		print("out of movement points")
	pass







	