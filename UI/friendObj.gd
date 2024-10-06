class_name FriendOBJ
extends StaticBody3D

@onready var mesh = $Mesh

@onready var collision : CollisionShape3D = $Collision
@export var friend : Friend

func interact(_target : Node):
	_target.gain_friend(friend)
	hide()
	collision.disabled = true
