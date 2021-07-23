extends Button



func _on_Exit_button_up() -> void:
	AudioManager.play_sfxSelect()
	yield(get_tree().create_timer(1.0),"timeout")
	get_tree().quit()


func _on_Exit_mouse_entered() -> void:
	AudioManager.play_sfxHover()


func _on_Exit_focus_entered() -> void:
	AudioManager.play_sfxHover()
