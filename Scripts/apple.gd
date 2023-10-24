extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float)-> void:
	pass


func _on_body_entered(body: Node2D)-> void:
	$anim.play("collect")
	queue_free() 


func _on_anim_animation_finished():
	pass # Replace with function body.
