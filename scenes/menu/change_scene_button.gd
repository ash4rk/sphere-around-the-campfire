extends Button

@onready var _DIALOG_SCENE = preload("res://scenes/menu/custom_dialog.tscn")
@export var SCENE_TO_CHANGE: SceneLoader.LEVELS = SceneLoader.LEVELS.EMPTY_LEVEL
@export var is_dialog_need: bool = false

func _on_pressed():
	if is_dialog_need:
		var exit_instance: CustomDialog = _DIALOG_SCENE.instantiate()
		exit_instance.text = "Переход?"
		exit_instance.yes_button_text = "Переход"
		exit_instance.no_button_text = "Отмена"
		get_tree().root.add_child(exit_instance)
		exit_instance.yes_button_pressed.connect(_change_scene)
	else:
		_change_scene()
	
func _change_scene():
	SceneLoader.change_scene(SCENE_TO_CHANGE)
