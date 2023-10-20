extends Node2D

var temp = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	var myvector = Vector2(2,3) * Vector2(4,5)
	print(myvector)
	print(rad_to_deg(myvector.angle()))
	print(myvector.length())
	var myVectorNormalized = myvector.normalized()
	print(myVectorNormalized)
	print(rad_to_deg(myVectorNormalized.angle()))
	print(myVectorNormalized.length())
	print('----------------------')
	print(position)
	print(rad_to_deg(position.angle()))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position = position + Vector2.ONE * delta 
	
	temp = temp + delta
	if temp > 1:
		print(position)
		print(rad_to_deg(position.angle()))
		temp = 0
