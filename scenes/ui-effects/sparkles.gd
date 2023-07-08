extends Node2D

@onready var base_sparkles = $BaseSparlkes
@onready var fading_stars = $FadingStars

func _ready():
	base_sparkles.emitting = true
	fading_stars.emitting = true

func _process(_delta):
	if (!base_sparkles.emitting and !fading_stars.emitting):
		self.queue_free()
