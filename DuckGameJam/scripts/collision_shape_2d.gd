extends CollisionShape2D

func _on_player_body_entered(body):
	if body.is_in_group("enemy"):
		get_tree().reload_current_scene()
		
