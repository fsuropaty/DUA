extends Node2D

var level_name : Node2D = get_parent() 
func _ready() -> void:
	print(level_name.name)	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass

