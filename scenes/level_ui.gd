extends Control

@export var sphere: CSGSphere3D

func _on_speed_h_slider_value_changed(value):
	sphere.rotation_speed = value

func _on_radius_h_slider_value_changed(value):
	sphere.rotation_radius = value
