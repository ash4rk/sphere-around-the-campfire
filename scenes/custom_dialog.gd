extends ColorRect

class_name CustomDialog

signal yes_button_pressed

func _on_yes_button_pressed():
	emit_signal("yes_button_pressed")

func _on_no_button_pressed():
	self.queue_free()
