tool
extends Area2D

export var next_scene: PackedScene
onready var anim_player: AnimationPlayer = $AnimationPlayer

# warning-ignore:unused_argument
func _on_Portal_body_entered(body: Node) -> void:
	move_scene()

func _get_configuration_warning() -> String:
	return "The next scene property can't be empty" if not next_scene else ""
	
func move_scene() -> void:
	if get_overlapping_bodies().size() > 1:
		anim_player.play("fade_out")
		yield(anim_player, "animation_finished")
		get_tree().change_scene_to(next_scene)
		#Global.switch_scene("res://scence/level/level2.tscn")

