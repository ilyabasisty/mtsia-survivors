extends Control

var select_character
var select_weapon

func _ready() -> void:
	change_select_character()
	$AnimationPlayer.play("weapon_move")

func change_select_character():
	select_character = Characters.CHARACTERS[Global.select_character_id]
	select_weapon = Weapons.WEAPONS[Global.select_character_id]
	$mishail_texture.texture = select_character.image
	$weapon_texture.texture = select_weapon.image
	$ColorRect/title_label.text = select_character.title
	$ColorRect/subtitle_label.text = select_character.subtitle
	$ColorRectWeapon/title_label.text = select_weapon.title
	$ColorRectWeapon/subtitle_label.text = select_weapon.subtitle
	
	%AudioStreamPlayer.stream = select_character.sound
	%AudioStreamPlayer.play()
	

func _on_slide_back_pressed() -> void:
	if Global.select_character_id > 0:
		%AudioButton.stream = PreLoader.btn_down_sound
		Global.select_character_id -= 1
		change_select_character()
	else:
		%AudioButton.stream = PreLoader.btn_denysound
	%AudioButton.play()


func _on_slide_front_pressed() -> void:
	if Global.select_character_id < Characters.CHARACTERS.size() - 1:
		%AudioButton.stream = PreLoader.btn_down_sound
		Global.select_character_id += 1
		change_select_character()
	else:
		%AudioButton.stream = PreLoader.btn_denysound
	%AudioButton.play()
