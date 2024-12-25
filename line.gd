extends Line2D

# Nodes to connect
@export var node_a_path: NodePath
@export var node_b_path: NodePath

var node_a: RigidBody2D
var node_b: RigidBody2D

func _ready():
	node_a = get_node(node_a_path)
	node_b = get_node(node_b_path)

func _process(delta):
	# Get global positions of the nodes
	var point_a = node_a.global_position
	var point_b = node_b.global_position
	global_rotation = 0
	global_position =  global_position * delta
	# Update the line's points
	points = [point_a, point_b ]
