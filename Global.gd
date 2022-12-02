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
	if oh_deer:
		var deer = get_node_or_null("/root/Snow/oh_deer")
		if deer != null:
			deer.visible = true
