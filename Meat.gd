extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	if Global.get_meat:
		$Meat.visible = true
		$Area2D.monitoring = true
		$Area2D.monitorable = true


func _on_Area2D_body_entered(body):
	Global.meat_got = true
	get_tree().change_scene("res://GameEnd.tscn")
