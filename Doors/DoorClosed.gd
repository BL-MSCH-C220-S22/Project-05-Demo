extends StaticBody

export var color = "Red"
onready var DoorOpen = load("res://Doors/DoorOpen.tscn")

func _ready():
	pass


func _on_Unlock_body_entered(body):
	if body.name == "Player1":
		if color in body.keys:
			var doorOpen = DoorOpen.instance()
			doorOpen.global_transform.origin = global_transform.origin
			doorOpen.rotation = rotation
			var Doors = get_node_or_null("/root/Game/Doors")
			if Doors != null:
				Doors.add_child(doorOpen)
			queue_free()
