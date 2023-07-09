extends Control

@export var _sphere: Node3D
@onready var _radius_value_label: Label = $VBoxContainer/RadiusContainer/RadiusValueLabel
@onready var _speed_value_label: Label = $VBoxContainer/SpeedContainer/SpeedValueLabel

func _ready():
	_speed_value_label.text = str(_sphere.rotation_speed)
	_radius_value_label.text = str(_sphere.rotation_radius)
	
	_sphere.rotation_radius_changed.connect(_on_rotation_radius_changed)
	_sphere.rotation_speed_changed.connect(_on_rotation_speed_changed)

func _on_speed_h_slider_value_changed(value):
	_sphere.rotation_speed = value

func _on_radius_h_slider_value_changed(value):
	_sphere.rotation_radius = value

func _on_rotation_radius_changed(new_value):
	_radius_value_label.text = str(new_value)

func _on_rotation_speed_changed(new_value):
	_speed_value_label.text = str(new_value)
