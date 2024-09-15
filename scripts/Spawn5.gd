extends Marker2D

@onready var car5 = load("res://scenes/car_5.tscn")

signal road5(car, car_position)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_spawn_5_timer_timeout():
	road5.emit(car5, position)
