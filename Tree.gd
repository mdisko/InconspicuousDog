extends Sprite


onready var player = get_node("/root/Snow/Player")

func _process(delta):
	if global_position.y > player.position.y:
		z_index = 3
	else:
		z_index = 1
