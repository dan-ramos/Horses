extends PhysicsBody2D

var angle = Vector2(1.2,.8)
var speed = 200


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var collision = move_and_collide(angle*speed*delta)
	if collision:
		var funx = randf_range(-.2, .5)
		var funy = randf_range(-.2, .5)
		var chance = randi_range(0, 1)
		angle = angle.bounce(collision.get_normal())
		if chance==0:
			angle.x += funx
			angle.y += funy
		print(angle)
		$AudioStreamPlayer.play()
