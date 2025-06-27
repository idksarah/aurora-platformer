extends Camera2D

var player
var zoom_multiplier = 1.7
var hud


var last_x
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	player = get_node("./..")
	hud = get_node("./../../HUD")
	last_x = player.global_position.x
	zoom = zoom * zoom_multiplier

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if(last_x < player.global_position.x):
		hud.score = max (hud.score, hud.score + 1)
	last_x = max(last_x, player.global_position.x)
	global_position.x = last_x + 300
	global_position.y = -250
	
