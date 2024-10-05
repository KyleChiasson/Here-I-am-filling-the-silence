extends Control

@onready var game_manager: Node = %GameManager
@onready var label: Label = $Label

func SetText(message : String):
	var regex = RegEx.new()
	regex.compile("[A-Za-z']+")
	var wordResults = regex.search_all(message)
	for word in wordResults:
		if(!game_manager.HasWord(word)):
			var temp : String = ""
			for i in word.count:
				temp += '-'
			message.replace(word, temp)
	label.text = message
