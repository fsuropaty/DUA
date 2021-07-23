extends Node2D

func _ready() -> void:
	AudioManager.stop_bgm()
	AudioManager.play_bgm2()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass
