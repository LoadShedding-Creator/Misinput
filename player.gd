extends CharacterBody2D

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta
	move_and_slide()
	
func _process(delta: float) -> void:

	if Input.is_action_pressed("ui_left"):
		global_position.x -= 10
	if Input.is_action_pressed("ui_accept"):
		global_position.y += 100
