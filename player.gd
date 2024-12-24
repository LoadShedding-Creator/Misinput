extends RigidBody2D

func _process(delta: float) -> void:
	if Input.is_action_pressed("ui_left"):
		global_position.x -= 10
	if Input.is_action_pressed("ui_accept"):
		global_position.y += 100
		print("nig")
		print(global_position)
