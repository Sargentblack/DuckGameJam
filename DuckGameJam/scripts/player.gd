extends CharacterBody2D

@export var speed: float = 300.0
@export var bullet_scene: PackedScene

@onready var shoot_timer: Timer = $ShootTimer
@onready var parallax_background := get_node("..") as ParallaxBackground  # Adjust path if needed


func _physics_process(delta: float) -> void:
	_update_input()
	_move_background(delta)
	move_and_slide()

func _update_input() -> void:
	var input_direction: Vector2 = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = input_direction * speed

func _move_background(delta: float) -> void:
	if parallax_background:
		var motion: Vector2 = -velocity * delta
		parallax_background.scroll_offset += motion
