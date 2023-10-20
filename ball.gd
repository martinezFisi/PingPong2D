extends Area2D

var speed = 200
var direction = Vector2.LEFT

func _init():
	print('Iniciando... :' + name)

func _process(delta):
	position = position + direction * speed * delta
