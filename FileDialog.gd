extends FileDialog

func _ready():
	popup()
	add_filter("*.txt")


func _on_FileDialog_confirmed():
	var file_path = get_current_path()
	var file = File.new()
	file.open(file_path, file.READ)
	var content = file.get_as_text()
	file.close()
	print(content)
