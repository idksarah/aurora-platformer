extends StaticBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_2d_body_entered(body: Node2D) -> void:
	if (body.name == "Player"):
		var current_scene_file = get_tree().current_scene.scene_file_path
		var next_level_number = current_scene_file.to_int() + 1
		print(next_level_number)
		var next_level_file_path = "res://levels/level_" + str(next_level_number) + ".tscn"
		get_tree().change_scene_to_file(next_level_file_path)
