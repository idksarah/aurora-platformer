extends Area2D

var checkpoint_manager
var player
var camera

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	checkpoint_manager = get_node("./../../CheckpointManager")
	player = get_node("./../../Player")
	camera = get_node("./../../Player/Camera2D")

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		kill_player()
		
func kill_player():
	player.global_position = checkpoint_manager.last_location
	camera.last_x = player.global_position.x
