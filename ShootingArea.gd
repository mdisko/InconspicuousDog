extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_ShootingArea_body_entered(body):
	if "Deer" in body.name and not "Oh" in body.name:
		Global.shooting = true


func _on_ShootingArea_body_exited(body):
	if "Deer" in body.name:
		Global.shooting = false
