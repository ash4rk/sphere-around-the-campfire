extends ColorRect

func _emit_glitch_effect() -> void:
	material.set_shader_parameter("AMT", 0.5)
	await get_tree().create_timer(0.3).timeout
	material.set_shader_parameter("AMT", 0.0)
