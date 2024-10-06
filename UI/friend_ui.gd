extends Control

@onready var friend_container = $FriendContainer

func _ready():
	for child in friend_container.get_children():
		child.hide()

func gain_friend(friend : Friend):
	for child in friend_container.get_children():
		if child.friend == friend:
			child.show()
	
