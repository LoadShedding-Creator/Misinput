extends Node2D

@export var center_position_path: NodePath  # Reference to the player or center point
@export var max_distance = 200.0  # Max distance for the hammer
var center_node: Node2D

func _ready():
	# Get the center node (e.g., the player or character)
	center_node = get_node(center_position_path) as Node2D

func _process(delta):
	# Refresh the drawing every frame
	update()

func _draw():
	if center_node:
	# Draw the debug circle at the center's position
		draw_circle(center_node.global_position, max_distance, Color(1, 0, 0, 0.3))
