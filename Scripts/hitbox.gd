extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body.name == "player" || body.name == "player2" || body.name == "player3": #atualize quando criar Pinho e Petúnia
		body.velocity.y = body.JUMP_VELOCITY
		owner.anim.play("hurt")
