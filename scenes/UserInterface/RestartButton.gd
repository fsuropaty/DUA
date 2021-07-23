extends Button

func _on_Restart_button_up() -> void:
	get_tree().paused = false
	get_tree().reload_current_scene()


func _on_Restart_focus_entered() -> void:
	AudioManager.play_sfxHover()


func _on_Restart_mouse_entered() -> void:
	AudioManager.play_sfxHover()
