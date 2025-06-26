extends CanvasLayer

var score = 0
var time
@onready var score_label = $ScoreLabel
@onready var time_label = $TimeLabel


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	show_score()
	update_time()

func show_score():
	score_label.text = "Score: " + str(score) 

func update_time():
	time = Time.get_ticks_msec() / 1000
	time_label.text = "Time: " + str(time)
