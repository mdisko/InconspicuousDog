extends Node

onready var SM = get_parent()
onready var player = get_node("../..")

func _ready():
	yield(player, "ready")

func start():
	player.direction = 0
	player.set_animation("Idle")
	get_parent().get_parent().get_child(4).playing = false

func physics_process(_delta):
	if player.is_moving():
		SM.set_state("Walking")
