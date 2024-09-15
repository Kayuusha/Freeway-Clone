extends Marker2D

@onready var car2 = load("res://scenes/car_2.tscn")

signal road2(car, car_position)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_spawn_2_timer_timeout():
	road2.emit(car2, position)
