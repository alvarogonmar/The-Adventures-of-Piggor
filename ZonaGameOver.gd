extends Area2D

func _ready():
	pass 


func _process(delta):
	pass


func _on_ZonaGameOver_body_entered(body):
	if body.get_name() == "Jugador":
		get_tree().reload_current_scene()
