extends Node2D



# Called when the node enters the scene tree for the first time.
func _ready():
	var newhorse = load('res://' + HorseLoader.getHorse() + '.png')
	$Horse/Sprite2D.texture = newhorse


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().quit()
