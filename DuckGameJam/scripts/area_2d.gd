extends Area2D
@export var speed = 400

func _process(delta):
	position.y -= speed * delta
	if position.y < -10:
		queue_free()
