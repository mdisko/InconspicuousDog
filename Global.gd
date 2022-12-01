extends Node


var cold_progression = 0
var shooting = false
var oh_deer = false
var get_meat = false
var meat_got = false


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):
	if cold_progression > 5:
		get_tree().quit()
	print(cold_progression)
	if not meat_got:
		cold_progression += delta / 240
		cold_progression = clamp(cold_progression, 0, 1)
	else:
		if cold_progression < 1:
			cold_progression += delta / 5
		cold_progression += delta / 20
	if oh_deer:
		get_node("/root/Snow/oh_deer").visible = true
