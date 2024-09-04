extends Node2D
const Speed = 60

var Direction = 1
@onready var animated_sprite= $AnimatedSprite2D
@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_left = $RayCastLeft

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_right.is_colliding():
		Direction = -1
		animated_sprite.flip_h = true
	if ray_cast_left.is_colliding():
		Direction = 1
		animated_sprite.flip_h= false
			
	position.x += Direction * Speed * delta
