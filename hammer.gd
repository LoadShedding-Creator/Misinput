extends RigidBody2D

@export var max_distance = 50.0  # Maximum distance from the center
@export var center_position: NodePath  # Reference to the center node (e.g., the character)

var center_node: RigidBody2D

func _ready():
# Get the center node
	center_node = get_parent() as RigidBody2D

func _integrate_forces(state):
	apply_central_force((get_global_mouse_position() - global_position ) * 20)
