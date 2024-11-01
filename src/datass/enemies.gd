extends Node

var ENEMIES = [
	{
		"image": load("res://assets/images/enemies/the_Cat_alph.png"),
		"max_in_swarm": 2,
		"health": 20,
		"damage": 10.0,
		"spawn_rate": 1,
		"title": "Микрокот",
		"text": "Они вообще не понимают, что тут происходит",
	},
	{
		"image": load("res://assets/images/enemies/pepega_1.png"),
		"max_in_swarm": 3,
		"health": 50,
		"damage": 30.0,
		"spawn_rate": 1,
		"title": "Пепега",
		"text": "Эти пепеги грустят - завали их",
	},
	{
		"image": load("res://assets/images/enemies/uganda.png"),
		"max_in_swarm": 30,
		"health": 1,
		"damage": 1.0,
		"spawn_rate": 0.2,
		"title": "Мемный Наклз",
		"text": "Толпа Наклзов отбилась от своей принцессы и ищет новую",
	},
	
]
