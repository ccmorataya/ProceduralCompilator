extends FileDialog

func _ready():
	add_filter("*.txt")

func _on_fdg_selector_confirmed():
	var txt = get_node("../txt_read")
	var file_path = get_current_path()
	var file = File.new()
	file.open(file_path, file.READ)
	var content = file.get_as_text()
	file.close()
	print(content)
	txt.set_text(content)
