extends Control

onready var anim_player: AnimationPlayer = $AnimationPlayer

func _ready() -> void:
	AudioManager.stop_bgm()
	anim_player.play("transition")
	yield(anim_player,"animation_finished")
	$StartMenu/StartButton.grab_focus()

