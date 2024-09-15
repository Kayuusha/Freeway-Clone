extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$AudioStreamPlayer2D.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func new_game():
	$HUD.show_message("Prepare-se!")
	$Spawn1/Spawn1Timer.start()
	$Spawn2/Spawn2Timer.start()
	$Spawn3/Spawn3Timer.start()
	$Spawn4/Spawn4Timer.start()
	$Spawn5/Spawn5Timer.start()
	$Spawn6/Spawn6Timer.start()
	await get_tree().create_timer(4.0).timeout
	$Character.move = true



func _on_spawn_1_road_1(car, car_position):
	var mob = car.instantiate()
	mob.position = car_position
	add_child(mob)
	mob.connect("back_road1", backRoad1)
	
	

func backRoad1(pj):

	if pj == $Character:
		$Character.position.y = move_toward($Character.position.y, $Road1.position.y, 4000)
		error()



func _on_spawn_2_road_2(car, car_position):
	var mob = car.instantiate()
	mob.position = car_position
	add_child(mob)
	mob.connect("back_road2", backRoad2)


func backRoad2(pj):
	if pj == $Character:
		$Character.position.y = move_toward($Character.position.y, $Road2.position.y, 4000)
		error()

func _on_spawn_3_road_3(car, car_position):
	var mob = car.instantiate()
	mob.position = car_position
	add_child(mob)
	mob.connect("back_road3", backRoad3)
	

func backRoad3(pj):
	if pj == $Character:
		$Character.position.y = move_toward($Character.position.y, $Road3.position.y, 4000)
		error()

func _on_spawn_4_road_4(car, car_position):
	var mob = car.instantiate()
	mob.position = car_position
	add_child(mob)
	mob.connect("back_road4", backRoad4)


func backRoad4(pj):
	if pj == $Character:
		$Character.position.y = move_toward($Character.position.y, $Road4.position.y, 4000)
		error()

func _on_spawn_5_road_5(car, car_position):
	var mob = car.instantiate()
	mob.position = car_position
	add_child(mob)
	mob.connect("back_road5", backRoad5)
	
func backRoad5(pj):
	if pj == $Character:
		$Character.position.y = move_toward($Character.position.y, $Road5.position.y, 4000)
		error()

func _on_spawn_6_road_6(car, car_position):
	var mob = car.instantiate()
	mob.position = car_position
	add_child(mob)
	mob.connect("back_road6", backRoad6)
	
func backRoad6(pj):
	if pj == $Character:
		$Character.position.y = move_toward($Character.position.y, $Road6.position.y, 4000)	
		error()
		

func error():
	$Error.stop()
	$Error.play()
	


func _on_hud_match_point():
	$Character.position.y = move_toward($Character.position.y, $Road1.position.y, 4000)
	$Victory.play()
