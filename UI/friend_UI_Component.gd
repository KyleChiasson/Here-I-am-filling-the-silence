extends Node3D

@export var friend : Friend

@onready var mesh = $Mesh


var time : float = 0.0
func _process(delta):
	time += delta
	mesh.position.y = sin(time)*0.1
	mesh.rotate_y(sin(time*0.5)*0.005)
