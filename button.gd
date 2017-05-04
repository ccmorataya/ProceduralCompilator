extends Button

func _ready():
	pass

func _input_event(event):
	var fileDialog = get_node("../fdg_selector")
	if is_pressed():
		fileDialog.popup()