extends Node

var level = [
	"res://scenes/level/World1.tscn",
	"res://scenes/level/World2.tscn",
	"res://scenes/level/World3.tscn",
	"res://scenes/level/World4.tscn",
	"res://scenes/level/World5.tscn",
	"res://scenes/level/World6.tscn",
]

func loadLevel(level_index):
	get_tree().change_scene(level[level_index])
