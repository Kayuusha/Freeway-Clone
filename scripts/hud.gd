extends CanvasLayer

signal start_game
var cont = 0
signal match_point


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func show_message(text):
	$Message.text = text
	$Message.show()
	$MessageTimer.start()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_start_button_pressed():
	$StartButton.hide()
	start_game.emit()


func _on_message_timer_timeout():
	$Message.hide()


func update_score(body):
	cont += 1
	$ScoreLabel.text = str(cont)
	match_point.emit()
