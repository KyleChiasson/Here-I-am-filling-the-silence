extends Control

@onready var label: Label = $Label

func SetText(message : String):
	var regex = RegEx.new()
	regex.compile("[A-Za-z']+")
	var wordResults = regex.search_all(message)
	for word in wordResults:
		if(!GameManager.HasWord(word.get_string())):
			var temp : String = ""
			for i in word.get_string().length():
				temp += '-'
			message = message.replace(word.get_string(), temp)
			print("\"" + word.get_string() + "\"")
	label.text = message
