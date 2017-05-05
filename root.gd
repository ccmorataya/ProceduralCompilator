extends Control

func _ready():
	var txt_content = get_node("txt_read")
	var txt_alphabet = get_node("txt_alphabet")
	var txt_reserverWords = get_node("txt_reservedWords")
	var txt_vars = get_node("Container/txt_vars")
	var txt_productionNumber = get_node("Container/txt_productionNumber")
	var txt_terminals = get_node("txt_terminals")
	
	txt_content.set_readonly(1)
	txt_alphabet.set_readonly(1)
	txt_reserverWords.set_readonly(1)
	txt_vars.set_readonly(1)
	txt_productionNumber.set_readonly(1)
	txt_terminals.set_readonly(1)
