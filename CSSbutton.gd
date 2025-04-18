extends TextureButton

@export var HorseName : String

func choose():
	HorseLoader.setHorse(HorseName)
	get_tree().change_scene_to_file("res://main.tscn")
