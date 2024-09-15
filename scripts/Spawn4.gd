extends Marker2D

@onready var car4 = load("res://scenes/car_4.tscn")

signal road4(car, car_position)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_spawn_4_timer_timeout():
	road4.emit(car4, position)
