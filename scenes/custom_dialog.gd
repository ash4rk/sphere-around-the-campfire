extends ColorRect

class_name CustomDialog

signal yes_button_pressed

@export var text: String
@onready var text_label: Label = $PanelContainer/VBoxContainer/TextLabel

func _ready():
	text_label.text = text

func _on_yes_button_pressed():
	emit_signal("yes_button_pressed")
	self.queue_free()

func _on_no_button_pressed():
	self.queue_free()
