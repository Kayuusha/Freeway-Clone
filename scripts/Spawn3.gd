extends Marker2D

@onready var car3 = load("res://scenes/car_3.tscn")

signal road3(car, car_position)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_spawn_3_timer_timeout():
	road3.emit(car3, position)
