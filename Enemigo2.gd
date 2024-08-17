extends Area2D

func _ready():
	pass 


func _process(delta):
	$AnimationPlayer.play("Enemigo2")
 

func _on_Area2D_body_entered(body):
	if body.get_name() == "Jugador":
		get_tree().reload_current_scene()
		
		queue_free()
