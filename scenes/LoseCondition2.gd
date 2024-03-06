extends Area2D

export var sceneName: String = "Level1"
var parentSprite: Sprite

func _on_Area2D_body_entered(body):
	if body.get_name() == "Player":
		get_tree().change_scene(str("res://scenes/" + sceneName + ".tscn"))
		get_node("Sprite2").show()
