extends Control

@export var sphere: Node3D
@onready var radius_value_label: Label = $VBoxContainer/RadiusContainer/RadiusValueLabel
@onready var speed_value_label: Label = $VBoxContainer/SpeedContainer/SpeedValueLabel

func _ready():
	speed_value_label.text = str(sphere.rotation_speed)
	radius_value_label.text = str(sphere.rotation_radius)
	
	sphere.rotation_radius_changed.connect(_on_rotation_radius_changed)
	sphere.rotation_speed_changed.connect(_on_rotation_speed_changed)

func _on_speed_h_slider_value_changed(value):
	sphere.rotation_speed = value

func _on_radius_h_slider_value_changed(value):
	sphere.rotation_radius = value

func _on_rotation_radius_changed(new_value):
	radius_value_label.text = str(new_value)

func _on_rotation_speed_changed(new_value):
	speed_value_label.text = str(new_value)
