extends Area2D



func _ready():
	pass 

func _process(delta):
	$AnimationPlayer.play("Item7Naranja")



func _on_Area2D_body_entered(body):
	if body.get_name() == "Jugador":
		Mundo1.SonidoNaranja.play()
		queue_free()

