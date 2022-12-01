extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):
	$SnowHorizontal.amount = 3000 + Global.cold_progression * 3000
	$SnowVertical.amount = 3000 + Global.cold_progression * 3000
	$Eyes.amount = max(1, 20 * Global.cold_progression)
	var light = 50
	var dark = 400
	if(Global.cold_progression > 1):
		dark -= (Global.cold_progression - 1) * 80
		light -= (Global.cold_progression - 1)  * 10
		light = clamp(light, 0, 50)
		dark = clamp(dark, 100, 400)
		$NoiseSnow.material.set_shader_param("alpha", 0.15 * Global.cold_progression)
		$Light.material.set_shader_param("innerColor", Color(1, 0.6 + 0.1 * (Global.cold_progression - 1), 0.15 + 0.3 * (Global.cold_progression - 1), .1 + 0.2 * (Global.cold_progression - 1)))
	$Light.material.set_shader_param("innerRad", light)
	$Light.material.set_shader_param("outerRad", dark)
	$Light.material.set_shader_param("minOut", dark - 30)
