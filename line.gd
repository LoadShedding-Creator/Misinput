extends Line2D

# Nodes to connect
@export var node_a_path: NodePath
@export var node_b_path: NodePath

var node_a: Node2D
var node_b: Node2D

func _ready():
	node_a = get_node(node_a_path) as Node2D
	node_b = get_node(node_b_path) as Node2D

func _process(delta):
	# Get global positions of the nodes
	var point_a = node_a.global_position
	var point_b = node_b.global_position
	
	# Update the line's points
	points = [point_a, point_b ]
