
		
extends Area2D


export (NodePath) var SonidoMusica_path
export (NodePath) var CuevaSonido_path

onready var SonidoMusica = get_node(SonidoMusica_path)
onready var CuevaSonido = get_node(CuevaSonido_path)

func _ready():
	connect("body_entered", self, "_on_body_entered")

func _on_body_entered(body):
	if body.name == "Jugador":  # Asegúrate de que el nombre del jugador es "Player"
		SonidoMusica.stop()
		CuevaSonido.play()
