extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body.name == "player": #atualize quando criar Pinho e Petúnia
		body.velocity.y = body.JUMP_VELOCITY
		owner.anim.play("hurt")
