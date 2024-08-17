extends Node2D

onready var SonidoBrinco = $SonidoBrinco
onready var SonidoItem = $SonidoItem
onready var SonidoMusica = $SonidoMusica
onready var SonidoCaja = $SonidoCaja
onready var SonidoNaranja = $SonidoNaranja

func _ready():
	Mundo1.SonidoBrinco = SonidoBrinco
	Mundo1.SonidoItem = SonidoItem
	Mundo1.SonidoMusica = SonidoMusica
	Mundo1.SonidoCaja = SonidoCaja
	Mundo1.SonidoNaranja = SonidoNaranja





