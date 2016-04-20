
extends Node2D

var rotation = 0
var suma = null
var multiplicacion = null
var resta = null
var division = null
	
func _process(delta):
	rotation += 1 * delta
	suma.set_rot(rotation)
	resta.set_rot(rotation)
	multiplicacion.set_rot(rotation)
	division.set_rot(rotation)

func _ready():
	set_process(true)
	suma = get_node("s_suma")
	resta = get_node("s_resta")
	multiplicacion = get_node("s_multiplicacion")
	division = get_node("s_division")

func _on_suma_pressed():
	get_tree().change_scene("res://scenes/game_screen.tscn")