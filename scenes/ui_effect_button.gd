extends Button

var SPARKLES_SCENE: PackedScene = preload("res://scenes/ui-effects/sparkles.tscn")
@export var glitch_effect: ColorRect

func _on_pressed():
	glitch_effect._emit_glitch_effect()
	var sparkles_instance = SPARKLES_SCENE.instantiate()
	get_parent().add_child(sparkles_instance)
	sparkles_instance.global_position = get_global_mouse_position()
