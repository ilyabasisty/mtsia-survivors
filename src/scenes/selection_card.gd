extends Control

func _ready() -> void:
	change_select_character()

func change_select_character():
	var select = Global.CHARACTERS[Global.select_character_id]
	var select_texture = load(select.path)
	var weapon_texture = load(select.weapon)
	$mishail_texture.texture = select_texture
	$weapon_texture.texture = weapon_texture
	$ColorRect/title_label.text = select.title
	$ColorRect/subtitle_label.text = select.subtitle
	$ColorRectWeapon/title_label.text = select.weapon_title
	$ColorRectWeapon/subtitle_label.text = select.weapon_subtitle
	

func _on_slide_back_pressed() -> void:
	if Global.select_character_id > 0:
		%AudioButton.stream = PreLoader.btn_down_sound
		Global.select_character_id -= 1
		change_select_character()
	else:
		%AudioButton.stream = PreLoader.btn_denysound
	%AudioButton.play()


func _on_slide_front_pressed() -> void:
	if Global.select_character_id < Global.CHARACTERS.size() - 1:
		%AudioButton.stream = PreLoader.btn_down_sound
		Global.select_character_id += 1
		change_select_character()
	else:
		%AudioButton.stream = PreLoader.btn_denysound
	%AudioButton.play()
