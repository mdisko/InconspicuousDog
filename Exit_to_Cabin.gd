extends Area2D



func _on_Exit_to_Cabin_body_entered(body):
	if body.name == "Player":
		if name == "Exit_to_Cabin":
			var _target = get_tree().change_scene("res://Cabin.tscn")
