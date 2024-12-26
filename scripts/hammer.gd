extends StaticBody2D

@export var pivot_position: Vector2 = Vector2.ZERO  # The fixed position for rotation

func _ready():
	# Initialize the hammer's rotation point if needed
	if pivot_position == Vector2.ZERO:
		pivot_position = get_parent().global_position

func _process(delta):
	# Get the mouse position in global coordinates
	var mouse_position = get_global_mouse_position()

	# Calculate the angle to the mouse relative to the pivot
	var direction =  pivot_position - mouse_position
	var target_angle = direction.angle()

	# Set the hammer's rotation to the calculated angle
	global_rotation = target_angle

	# Ensure the hammer remains at the pivot position
	#global_position = pivot_position
