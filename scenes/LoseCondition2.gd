extends Area2D

export var sceneName: String = "Level1"
var parentSprite: Sprite

func _on_Area2D_body_entered(body):
	if body.get_name() == "Player":
		get_parent().show()
		yield(get_tree().create_timer(0.5), "timeout")
		get_tree().change_scene(str("res://scenes/" + sceneName + ".tscn"))
