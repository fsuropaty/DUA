extends Control

onready var anim_player: AnimationPlayer = $AnimationPlayer

func _ready() -> void:
	anim_player.play("transition")
	yield(anim_player,"animation_finished")

