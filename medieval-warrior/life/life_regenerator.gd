extends Node2D

@export var regenaration_amount: int = 10

func _ready():
	$Area2D.body_entered.connect(on_body_entered)
	
func on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		var player: Player = body
		player.heal(regenaration_amount)
	print(body)
	
	pass
