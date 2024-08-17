extends KinematicBody2D

var speed = 120
var jump = -150
var gravity = 300
var movement = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta): #mover teclas
	if not Mundo1.SonidoMusica.is_playing():
		Mundo1.SonidoMusica.play()
	
	movement.x = 0
	movement.y += gravity * delta #
	
	if Input.is_action_pressed("ui_right"):
		$Sprite.flip_h = false
		movement.x += 1 * speed
		$AnimationPlayer.play("Moviendo")
	elif Input.is_action_pressed("ui_left"):
		$Sprite.flip_h = true
		movement.x -= 1 * speed #go left
		$AnimationPlayer.play("Moviendo")
	else:
		$AnimationPlayer.play("Quieto")
	
	
	
	if is_on_floor() && Input.is_action_just_pressed("ui_accept"):
		movement.y = jump
		Mundo1.SonidoBrinco.play()
		
	
	
	
	
		
	movement = move_and_slide(movement, Vector2(0,-1))
