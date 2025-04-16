extends PhysicsBody2D

var angle = Vector2(1.2,.8)
var speed = 200


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var collision = move_and_collide(angle*speed*delta)
	if collision:
		var funx = randf_range(-.5, .5)
		angle = angle.bounce(collision.get_normal())
		angle.x += funx
		angle.y -= funx
		print(angle)
		$AudioStreamPlayer.play()
