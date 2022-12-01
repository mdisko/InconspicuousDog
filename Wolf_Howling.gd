extends AudioStreamPlayer

var t = 30

func _on_Timer_timeout():
	play()
	$Timer.start(t*rand_range(0.75,1.25))
