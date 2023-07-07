extends ColorRect

class_name CustomDialog

signal yes_button_pressed

@export var text: String = "dialog_text"
@export var yes_button_text: String = "yes_button_text"
@export var no_button_text: String = "no_button_text"

@onready var text_label: Label = $PanelContainer/VBoxContainer/TextLabel
@onready var yes_button: Button = $PanelContainer/VBoxContainer/HBoxContainer/YesButton
@onready var no_button: Button = $PanelContainer/VBoxContainer/HBoxContainer/NoButton

func _ready():
	text_label.text = text
	yes_button.text = yes_button_text
	no_button.text = no_button_text

func _on_yes_button_pressed():
	emit_signal("yes_button_pressed")
	self.queue_free()

func _on_no_button_pressed():
	self.queue_free()
