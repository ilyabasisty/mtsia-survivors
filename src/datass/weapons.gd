extends Node

var WEAPONS = [
	{
		"image": load("res://assets/images/weapons/frruuuutmotiv.png"),
		"bullet": load("res://src/player/projectiles/fruut_bullet.tscn"),
		"sound": load("res://assets/sounds/shoot/frutruuuuut_shoot.mp3"),
		"title": "Фрутмотиловная смесь",
		"subtitle": "Мирская реплика амброзии",
		"timer_wait_time": 0.5
	},
	{
		"image": load("res://assets/images/weapons/deep_dark_fantasy.png"),
		"bullet": load("res://src/player/projectiles/ddf_bullet.tscn"),
		"sound": load("res://assets/sounds/shoot/woosh.mp3"),
		"title": "D.D.F. | deep dark fantasy",
		"subtitle": "Если это ROR, то бонус к скорости, если это жизнь, то...",
		"timer_wait_time": 2.0
	},
	{
		"image": load("res://assets/images/weapons/podushka.png"),
		"bullet": load("res://src/player/projectiles/podushka_bullet.tscn"),
		"sound": load("res://assets/sounds/shoot/woosh.mp3"),
		"title": "Ззбзз",
		"subtitle": "Ты не ты, если не ззбзз",
		"timer_wait_time": 2.5
	},
	{
		"image": load("res://assets/images/weapons/perdushka.png"),
		"bullet": load("res://src/player/projectiles/perdushka_bullet.tscn"),
		"sound": load("res://assets/sounds/characters/fart-with-reverb.mp3"),
		"title": "Подушка-пердушка",
		"subtitle": "Ей самое место на важном совещании",
		"timer_wait_time": 1.3
	},
	{
		"image": load("res://assets/images/weapons/mister_fish.png"),
		"bullet": load("res://src/player/projectiles/mr_fish_bullet.tscn"),
		"sound": load("res://assets/sounds/shoot/frutruuuuut_shoot.mp3"),
		"title": "Мистер Фиш",
		"subtitle": "Итс э гуд плейс",
		"timer_wait_time": 0.8
	},
	{
		"image": load("res://assets/images/weapons/AKHHphone.png"),
		"bullet": load("res://src/player/projectiles/megaphone_bullet.tscn"),
		"sound": load("res://assets/sounds/shoot/piano_e.mp3"),
		"title": "Громкоговорник",
		"subtitle": "Позволяет громко говорить. P.S. Сломан",
		"timer_wait_time": 0.1
	},
	{
		"image": load("res://assets/images/weapons/boomba.png"),
		"bullet": load("res://src/player/projectiles/dungeo_bullet.tscn"),
		"sound": load("res://assets/sounds/shoot/dungeon-master_lH2ReGX.mp3"),
		"title": "Пробитие",
		"subtitle": "Это Пробитие, но только ты в него веришь",
		"timer_wait_time": 2.0
	},
	{
		"image": load("res://assets/images/weapons/mooooshh_icon.png"),
		"bullet": load("res://src/player/projectiles/mooosh_bullet.tscn"),
		"sound": load("res://assets/sounds/shoot/bubble_iMw0wu6.mp3"),
		"title": "Грибочки",
		"subtitle": "Надеюсь, инженер не заметил пропажу",
		"timer_wait_time": 1.2
	}
]
