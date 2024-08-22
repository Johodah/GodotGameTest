extends Node2D
const Speed = 60

var Direction = 1

@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_left = $RayCastLeft

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_right.is_colliding():
		Direction = -1
	if ray_cast_left.is_colliding():
		Direction = 1
			
	position.x += Direction * Speed * delta
