extends Node3D

@export var target_node: Node3D
@export var rotation_radius: float = 5.0
@export var rotation_speed: float = 1.0

var angle: float = 0.0

func _process(delta: float):
	angle += rotation_speed * delta
	
	var x = target_node.position.x + rotation_radius * cos(angle)
	var z = target_node.position.z + rotation_radius * sin(angle)
	position = Vector3(x, position.y, z)
