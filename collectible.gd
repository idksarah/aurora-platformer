extends Sprite2D

var hud
var player

func _ready():
	hud = get_node("./../HUD")
	player = get_node("./../Player")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_2d_body_entered(body: Node2D) -> void:
	if(body.name == player.name):
		hud.score += 50
	queue_free()
