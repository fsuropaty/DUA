extends Node

var bgm = load("res://assets/sounds/bgm.wav")
var bgm2 = load("res://assets/sounds/bgm2.wav")
var sfx_select = load("res://assets/sounds/sfx-select.wav")
var sfx_jump = load("res://assets/sounds/SFX_Jump_12.wav")
var sfx_hover = load("res://assets/sounds/hover.wav")
var portal = load("res://assets/sounds/completetask_0.mp3")

func stop_bgm():
	$bgm.stop()

func play_sfxSelect():
	$sfx_select.stream = sfx_select
	$sfx_select.play()

func play_bgm():
	$bgm.stream = bgm
	$bgm.play()

func play_bgm2():
	$bgm2.stream = bgm2
	$bgm2.play()

func play_sfxJump():
	$sfx_jump.stream = sfx_jump
	$sfx_jump.play()

func play_sfxPortal():
	$sfx_portal.stream = portal
	$sfx_portal.play()

func play_sfxHover():
	$sfx_hover.stream = sfx_hover
	$sfx_hover.play()
