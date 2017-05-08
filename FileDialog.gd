extends FileDialog
onready var txtContent = get_node("../txt_read")
onready var txtTerminals = get_node("../txt_terminals")

func _ready():
	add_filter("*.txt")

func _on_fdg_selector_confirmed():
	var file_path = get_current_path()
	var file = File.new()
	file.open(file_path, file.READ)
	var content = file.get_as_text()
	file.close()
	txtContent.set_text(content)
	
	var regexTerminal = RegEx.new()
	var terminalStringArray = StringArray()
	regexTerminal.compile("[a-z]")
	regexTerminal.find(content)
	terminalStringArray = regexTerminal.get_captures()
	txtTerminals.set_text(terminalStringArray[0])
	print(terminalStringArray)