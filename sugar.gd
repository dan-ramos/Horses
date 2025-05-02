extends Area2D

func _on_body_entered(body):
	var list = $"../SugPoints".get_children()
	var point = list.pick_random()
	position = point.position
	$AudioStreamPlayer2D.play()
	print('sugar get')
