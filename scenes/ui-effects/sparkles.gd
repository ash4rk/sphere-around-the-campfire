extends Node2D

@onready var _base_sparkles = $BaseSparlkes
@onready var _fading_stars = $FadingStars

func _ready():
	_base_sparkles.emitting = true
	_fading_stars.emitting = true

func _process(_delta):
	if (!_base_sparkles.emitting and !_fading_stars.emitting):
		self.queue_free()
