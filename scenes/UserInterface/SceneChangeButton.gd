tool
extends Button

onready var anim_player: AnimationPlayer = $AnimationPlayer
export(String, FILE) var start_scene : = ""
# Called when the node enters the scene tree for the first time.
func _get_configuration_warning() -> String:
	return "The Start Scene can't be empty" if start_scene == "" else ""

func _on_ChangeScene_button_up() -> void:
	anim_player.play("Fade_out")
	yield(anim_player,"animation_finished")
	get_tree().change_scene(start_scene)



