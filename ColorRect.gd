extends ColorRect


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func flash():
	color.a = 1
	$Tween.interpolate_property(self, "color", color, Color(color.r, color.g, color.b, 0), 2, Tween.TRANS_SINE, Tween.EASE_IN)
	$Tween.start()
