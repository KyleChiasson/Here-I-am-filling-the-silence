extends Node

@onready var audio = [$Background, $Music1, $Music2, $Music3, $Music4, $Music5, $Music6, $Music7]
var trackAmt = 0

func AddTrack():
	trackAmt += 1
	if(trackAmt <= 7):
		audio[trackAmt].volume_db = 0
		print("Added track" + trackAmt)


func _on_player_friend_gained() -> void:
	AddTrack()
