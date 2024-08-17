extends Area2D




func _ready():
	pass

func _on_Area2D_body_entered(body):
	if body.get_name() == "Jugador":
		Mundo1.SonidoCaja.play()
		queue_free()
