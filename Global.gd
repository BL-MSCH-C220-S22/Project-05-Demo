extends Node

var which_player = 0
var player2id = -1

func _ready():
	pause_mode = PAUSE_MODE_PROCESS

func _unhandled_input(event):
	if event.is_action_pressed("menu"):
		get_tree().quit()
	if event.is_action_pressed("inventory"):
		var Inventory = get_node_or_null("/root/Game/HUD/Inventory")
		if Inventory != null:
			if Inventory.visible:
				get_tree().paused = false
				Inventory.hide()
				Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
			else:
				Inventory.show()
				Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
				get_tree().paused = true
