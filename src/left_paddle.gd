extends Area2D

@export var paddle_type = "left_paddle"

const MIN_LIMIT_SCREEN_Y = -230
const MAX_LIMIT_SCREEN_Y = 136
const ZERO = 0
const UP = -1
const DOWN = 1

var speed = 250
var move_down_paddle_type
var move_up_paddle_type

func _init():
	move_up_paddle_type = paddle_type + "_move_up"
	move_down_paddle_type = paddle_type + "_move_down"

func _process(delta):
	var direction = ZERO
	
	if (Input.is_action_pressed(move_up_paddle_type) && position.y > MIN_LIMIT_SCREEN_Y):
		direction = UP
	if (Input.is_action_pressed(move_down_paddle_type) && position.y < MAX_LIMIT_SCREEN_Y):
		direction = DOWN
			
	position.y = position.y + direction * speed * delta

func _on_area_entered(area):
	if area.name == "Ball" :
		area.direction = Vector2( 1, randf() * 2 - 1).normalized()
