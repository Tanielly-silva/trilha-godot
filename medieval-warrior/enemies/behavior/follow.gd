extends CharacterBody2D

@export var speed = 1.0

func _physics_process(delta: float) -> void:

#input vector
#velocity = input vector * seed * 100.0

move_and_slide()
