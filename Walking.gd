extends Node

onready var SM = get_parent()
onready var player = get_node("../..")

func _ready():
	yield(player, "ready")

func start():
	player.set_animation("Walking")
	get_parent().get_parent().get_child(4).playing = true

func physics_process(delta):
	if player.is_moving():
		player.move_and_collide(player.move_vector().normalized() * player.move_speed * delta)
	else:
		player.direction = Vector2.ZERO
		SM.set_state("Idle")
