class_name PlayerSpawn extends State


@export var player: Player


func enter() -> void:
	player.position = player.spawn_position.position
	player.velocity = Vector3.ZERO
	
	player.move_and_slide()
	
	if player.is_on_floor():
		transition.emit(&"PlayerGrounded")
		return
	
	transition.emit(&"PlayerAirborne")
