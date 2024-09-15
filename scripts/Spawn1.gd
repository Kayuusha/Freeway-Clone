extends Marker2D

@onready var car1 = load("res://scenes/car_1.tscn")

signal road1(car, car_position)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_spawn_1_timer_timeout():
	road1.emit(car1, position)
