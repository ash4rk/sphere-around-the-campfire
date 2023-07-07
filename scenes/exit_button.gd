extends Button

@onready var DIALOG_SCENE = preload("res://scenes/custom_dialog.tscn")

func _on_pressed():
	var exit_instance: CustomDialog = DIALOG_SCENE.instantiate()
	exit_instance.text = "Exit?"
	exit_instance.yes_button_text = "Yes"
	exit_instance.no_button_text = "No"
	get_tree().root.add_child(exit_instance)
	exit_instance.yes_button_pressed.connect(quit)
	
func quit():
	get_tree().quit()
