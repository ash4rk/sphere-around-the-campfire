extends ColorRect

func _on_yes_button_pressed():
	get_tree().quit()

func _on_no_button_pressed():
	self.queue_free()
