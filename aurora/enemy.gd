extends CharacterBody2D


const SPEED = 100.0

var follow_player = false
@onready var visibility = $Visibility
@onready var player = $"../Player"

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
		
	if follow_player:
		if(player.global_position.x > self.global_position.x):
			velocity.x = SPEED
		else:
			velocity.x = -SPEED
	move_and_slide()

func _on_visibility_body_entered(body: Node2D) -> void:
	if (body.name == player.name):
		follow_player = true


func _on_visibility_body_exited(body: Node2D) -> void:
	if (body.name == player.name):
		follow_player = false
