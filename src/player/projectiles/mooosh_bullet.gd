extends Area2D



var travelled_distance = 0
var travelled_range = 2000
@export var speed = 300
@export var damage = 9

func _ready() -> void:
	$AnimationPlayer.play("new_animation")


func _physics_process(delta: float) -> void:
	
	var direction = Vector2.UP.rotated(rotation)
	position += direction * speed * delta

	travelled_distance += speed * delta
	if travelled_distance > travelled_range:
		queue_free()


func _on_body_entered(body: Node2D) -> void:
	if body.has_method("take_damage"):
		body.take_damage(damage)
