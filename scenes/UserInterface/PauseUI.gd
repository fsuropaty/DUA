tool
extends Control

export(String, FILE) var main_menu: = ""
onready var anim_player: AnimationPlayer = $AnimationPlayer

func _ready() -> void:
	get_tree().paused = false
	$PauseOverlay/PauseMenu/Resume.grab_focus()
	

func _input(event: InputEvent) -> void:
	if Input.is_action_just_released("pause"):
		visible = not visible
		get_tree().paused = not get_tree().paused
	
	if Input.is_action_just_released("restart"):
		get_tree().paused = false
		AudioManager.play_sfxSelect()
		get_tree().reload_current_scene()

func _on_Resume_button_up() -> void:
	AudioManager.play_sfxSelect()
	get_tree().paused = false
	visible = not visible

func _on_MainMenu_button_up() -> void:
	get_tree().paused = false
	AudioManager.play_sfxSelect()
	anim_player.play("pause_fade_out")
	yield(anim_player,"animation_finished")
	get_tree().change_scene(main_menu)

func _on_Resume_focus_entered() -> void:
	AudioManager.play_sfxHover()

func _on_Resume_mouse_entered() -> void:
	AudioManager.play_sfxHover()

func _on_MainMenu_focus_entered() -> void:
	AudioManager.play_sfxHover()

func _on_MainMenu_mouse_entered() -> void:
	AudioManager.play_sfxHover()
