extends Marker2D

@onready var car6 = load("res://scenes/car_6.tscn")

signal road6(car, car_position)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_spawn_6_timer_timeout():
	road6.emit(car6, position)
