extends Area2D

var travelled_distance = 0
const RANGE = 1500
const SPEED = 600

func _physics_process(delta: float) -> void:
	
	var direction = Vector2.UP.rotated(rotation)
	position += direction * SPEED * delta

	travelled_distance += SPEED * delta
	if travelled_distance > RANGE:
		queue_free()


func _on_body_entered(body: Node2D) -> void:
	queue_free()
	if body.has_method("take_damage"):
		body.take_damage()
