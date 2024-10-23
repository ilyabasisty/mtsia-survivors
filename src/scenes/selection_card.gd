extends Control

func _ready() -> void:
	change_select_character()

func change_select_character():
	var select = Global.CHARACTERS[Global.SELECT_CHARACTER_ID]
	var select_texture = load(select.path)
	$TextureRect.texture = select_texture
	$TextEdit.text = select.name
	

func _on_slide_back_pressed() -> void:
	if Global.SELECT_CHARACTER_ID > 0:
		Global.SELECT_CHARACTER_ID -= 1


func _on_slide_front_pressed() -> void:
	if Global.SELECT_CHARACTER_ID < Global.CHARACTERS.size():
		Global.SELECT_CHARACTER_ID += 1
