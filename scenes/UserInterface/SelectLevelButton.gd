tool
extends Button


export(String, FILE) var level_selector_scene : = ""


func _on_Select_Level_button_up() -> void:
	get_tree().change_scene(level_selector_scene)


func _get_configuration_warning() -> String:
	return "The Start Scene can't be empty" if level_selector_scene == "" else ""
