extends Node

var score = 100
@export var enemy_scene: PackedScene

#game manager code
func add_score(value):
	score += value 
	$UI/ScoreLabel.text = "Score: " + str(score)

#Enemy spawner code
func _on_EnemyTimer_timeout():
	var enemy = enemy_scene.instantiate()
	enemy.position = Vector2(randi() % 480, -10)
	add_child(enemy)
