extends Area2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

@onready var game_manager = %GameManager
@onready var animation_player = $AnimationPlayer

func _on_body_entered(body):
	game_manager.add_point()
	animation_player.play("pickup")
