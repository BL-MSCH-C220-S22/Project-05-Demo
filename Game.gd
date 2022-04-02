extends Spatial

onready var player1pos = $Player1Pos
onready var player2pos = $Player2Pos

func _ready():
	var player1 = preload("res://Player/Player.tscn").instance()
	player1.name = "Player1"
	player1.global_transform = player1pos.global_transform
	$Container/V1/V1.add_child(player1)

	var player2 = preload("res://Player/Player2.tscn").instance()
	player2.name = "Player2"
	player2.global_transform = player2pos.global_transform
	$Container/V2/V2.add_child(player2)
