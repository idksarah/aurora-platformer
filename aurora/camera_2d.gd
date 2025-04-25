extends Camera2D

var player
var zoom_multiplier = 1.7
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	player = get_node("./..")
	zoom = zoom * zoom_multiplier

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	global_position.x = player.global_position.x
	global_position.y = player.global_position.y - 100
