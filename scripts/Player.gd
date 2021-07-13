extends KinematicBody2D

const ACCELERATION = 1000
const MAX_SPEED = 100
const FRICTION = 1
const GRAVITY = 800
const AIR_RESISTANCE = 0.15
const JUMP_FORCE = 250

var motion = Vector2.ZERO

onready var _animated_sprite = $AnimatedSprite

func _physics_process(delta):
	motion.y += GRAVITY * delta
	
	var x_input = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	
	if x_input != 0:
		_animated_sprite.play("run")
		motion.x += x_input * ACCELERATION * delta
		motion.x = clamp(motion.x, -MAX_SPEED, MAX_SPEED)
		_animated_sprite.flip_h = x_input < 0
	else:
		_animated_sprite.play("idle")	
	
	if is_on_floor():
		if x_input == 0:
			motion.x = lerp(motion.x, 0, FRICTION)
			
		if Input.is_action_just_pressed("ui_up"):
			motion.y = -JUMP_FORCE
	else:
		_animated_sprite.play("jump")

# warning-ignore:integer_division
		if Input.is_action_just_released("ui_up") and motion.y < -JUMP_FORCE/2:
# warning-ignore:integer_division
			motion.y = -JUMP_FORCE/2
		
		if x_input == 0:
			motion.x = lerp(motion.x, 0, AIR_RESISTANCE)
	
	motion = move_and_slide(motion, Vector2.UP)		
