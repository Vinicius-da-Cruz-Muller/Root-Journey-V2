extends Node2D

@onready var area_sign = $area_sign

const lines : Array[String] = [
	"Colete frutas para somar pontos!",
	"Frutas diferentes tem valores diferentes! texto texto texto texto",
	"Boa sorte!",
]

func _unhandled_input(event):
	if area_sign.get_overlapping_bodies().size() > 0:
		if event.is_action_pressed("interact") && !DialogManager.is_message_active:
			DialogManager.start_message(global_position, lines)
	else:
		if DialogManager.dialog_box != null:
			DialogManager.dialog_box.queue_free()
			DialogManager.is_message_active = false
