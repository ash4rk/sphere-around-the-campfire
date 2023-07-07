extends Button

@onready var EXIT_DIALOG = preload("res://scenes/exit_dialog.tscn")

func _on_pressed():
	var exit_instance = EXIT_DIALOG.instantiate()
	get_tree().root.add_child(exit_instance)
