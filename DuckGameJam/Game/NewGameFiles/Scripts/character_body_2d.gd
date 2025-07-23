extends CharacterBody2D
@export var speed = 100

func _physics_process(delta):
	position.y += speed * delta
	if position.y > 600:
		queue_free()
