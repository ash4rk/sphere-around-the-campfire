extends Button

@onready var DIALOG_SCENE = preload("res://scenes/menu/custom_dialog.tscn")

func _on_pressed():
	var exit_instance: CustomDialog = DIALOG_SCENE.instantiate()
	exit_instance.text = "Выход?"
	exit_instance.yes_button_text = "Да"
	exit_instance.no_button_text = "Нет"
	get_tree().root.add_child(exit_instance)
	exit_instance.yes_button_pressed.connect(quit)
	
func quit():
	get_tree().quit()
