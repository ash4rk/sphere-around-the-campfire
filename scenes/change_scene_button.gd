extends Button

@onready var DIALOG_SCENE = preload("res://scenes/custom_dialog.tscn")
@export var SCENE_TO_CHANGE = preload("res://scenes/empty.tscn")

func _on_pressed():
	var exit_instance: CustomDialog = DIALOG_SCENE.instantiate()
	exit_instance.text = "Change Scene?"
	get_tree().root.add_child(exit_instance)
	exit_instance.yes_button_pressed.connect(change_scene)
	
func change_scene():
	get_tree().change_scene_to_packed(SCENE_TO_CHANGE)
