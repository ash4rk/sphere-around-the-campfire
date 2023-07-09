extends Button

var _SPARKLES_SCENE: PackedScene = preload("res://scenes/ui-effects/sparkles.tscn")
@onready var _ripple_effect: ColorRect = $RippleEffect
@onready var _stroke_glow_effect: ColorRect = $StrokeGlowEffect
@export var _glitch_effect: ColorRect

func _on_pressed():
	_glitch_effect._emit_glitch_effect()
	_emit_sparkles_effect()
	_emit_ripple_effect()
	_emit_stroke_glow_effect()

func _emit_sparkles_effect():
	var sparkles_instance = _SPARKLES_SCENE.instantiate()
	get_parent().add_child(sparkles_instance)
	sparkles_instance.global_position = get_global_mouse_position()

func _emit_ripple_effect():
	var tween = get_tree().create_tween();
	tween.tween_method(_set_shader_value, -0.1, 2.0, 0.5)
	_ripple_effect.material.set_shader_parameter("center", _get_normalized_mouse_position())

func _set_shader_value(value: float):
	_ripple_effect.material.set_shader_parameter("distortion_force", value)
	_ripple_effect.material.set_shader_parameter("size", value)
	
func _get_normalized_mouse_position() -> Vector2:
	var buttonRect = self.get_rect()
	var mousePos = self.get_local_mouse_position()

	var xNormalized = mousePos.x / buttonRect.size.x
	var yNormalized = mousePos.y / buttonRect.size.y

	return Vector2(xNormalized, yNormalized)
	
func _emit_stroke_glow_effect():
	var tween = get_tree().create_tween();
	tween.tween_method(_set_stroke_effect_transperancy, 1.0, 0.0, 0.4).set_ease(Tween.EASE_OUT)

func _set_stroke_effect_transperancy(value: float):
	_stroke_glow_effect.material.set_shader_parameter("transparency", value)
