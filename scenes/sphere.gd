extends Node3D

class_name RotationSphere

signal rotation_radius_changed (new_value)
signal rotation_speed_changed (new_value)

@export var target_node: Node3D
@export var rotation_radius: float = 5.0 : set = _set_rotation_radius
@export var rotation_speed: float = 1.0 : set = _set_rotation_speed

var _angle: float = 0.0

func _process(delta: float):
	_angle += rotation_speed * delta
	
	var x = target_node.position.x + rotation_radius * cos(_angle)
	var z = target_node.position.z + rotation_radius * sin(_angle)
	position = Vector3(x, position.y, z)

func _set_rotation_radius(new_value):
	rotation_radius = new_value
	rotation_radius_changed.emit(rotation_radius)
	
func _set_rotation_speed(new_value):
	rotation_speed = new_value
	rotation_speed_changed.emit(rotation_speed)
