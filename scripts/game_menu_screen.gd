
extends Node2D

var rotation = 0
var suma = null

func _process(delta):
	pass
	
func _fixed_process(delta):
	rotation += 1 * delta
	suma.set_rot(rotation)

func _ready():
	set_fixed_process(true)
	suma = get_node("s_suma")
