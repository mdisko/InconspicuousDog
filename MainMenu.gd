extends Control



func _on_Button_pressed():
	var _scene = get_tree().change_scene("res://Snow.tscn")


func _on_Button2_pressed():
	get_tree().quit()
