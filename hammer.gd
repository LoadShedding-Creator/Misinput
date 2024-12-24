extends RigidBody2D

@export var max_distance = 200.0  # Maximum distance from the center
@export var center_position: NodePath  # Reference to the center node (e.g., the character)

var center_node: RigidBody2D

func _ready():
# Get the center node
	center_node = get_parent() as RigidBody2D

func _integrate_forces(state):
# Calculate distance and direction from the center
	var center_global_position = center_node.global_position
	var direction = global_position - center_global_position

	if direction.length() > max_distance:
# Clamp the position to the maximum distance
		var clamped_position = center_global_position + direction.normalized() * max_distance

# Correct the body's position using physics-safe methods
		state.transform.origin = clamped_position

# Stop any outward movement
	linear_velocity = Vector2.ZERO
