extends CharacterBody2D

const SPEED = 400.00
const JUMP_VELOCITY = -600.0
var gravity: float = ProjectSettings.get_setting("physics/2d/default_gravity")
func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity.y = gravity * delta
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	
	var direction := float(Input.get_axis("ui_left", "ui_right")or 0.0)
	if direction !=0.0:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x,0.0, SPEED)
	
	move_and_slide()
