extends Node

enum LEVELS { MAIN_MENU, SPHERE_LEVEL, EMPTY_LEVEL }

const _LEVEL_SCENES = {
	LEVELS.MAIN_MENU : preload("res://main.tscn"),
	LEVELS.SPHERE_LEVEL : preload("res://scenes/sphere_and_fire_level.tscn"),
	LEVELS.EMPTY_LEVEL : preload("res://scenes/empty.tscn"),
}

func change_scene(level: LEVELS):
	get_tree().change_scene_to_packed(_LEVEL_SCENES[level])
