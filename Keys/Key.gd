extends Area

export var color = "Red"


func _on_Key_body_entered(body):
	if body.name == "Player1":
		body.keys.append(color)
		queue_free()
