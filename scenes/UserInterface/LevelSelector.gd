extends Node

func _ready() -> void:
	for i in $Levels.get_children():
		i.text = i.name

func level_1(level_index) -> void:
	level_index = 1
	LevelList.loadLevel(level_index)
