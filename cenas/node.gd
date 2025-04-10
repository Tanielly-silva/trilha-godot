extends Node

#func_ready() -> void:
	#pass
	#
#func _process (delta: float) -> void:
	#pass
	
func _input(event: InputEvent) -> void:
	#input no botao e um evento de click
	if event is InputEventMouseButton:
		if event.button_index == 1:
			if event.pressed:
				spaw_object	(event.position):
	
	pass
		
func spaw_object(event.position) -> void:
	pass
			
