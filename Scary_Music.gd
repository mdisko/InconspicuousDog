extends AudioStreamPlayer


func _ready():
	pass

func _process(delta):
	if Global.meat_got and not playing:
		print(true)
		playing = true
