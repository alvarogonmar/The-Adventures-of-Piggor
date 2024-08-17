extends Area2D

func _ready():
	pass

func _process(delta):
	$AnimationPlayer.play("Item")
	
func _on_Area2D_body_entered(body):
	if body.get_name() == "Jugador":
		Mundo1.SonidoItem.play()
		queue_free()
