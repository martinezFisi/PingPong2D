extends Area2D

var temp = 0
var initPosition
var speed = 300
var direction = Vector2.LEFT

func _init():
	initPosition = position

func _process(delta):
	position = position + direction * speed * delta
	
func reset_position():
	position = initPosition
	direction = Vector2( randf() * 2 - 1, randf() * 2 - 1).normalized()
