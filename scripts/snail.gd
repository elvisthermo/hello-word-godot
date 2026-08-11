extends Area2D
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

const SPEED = 100.0
var direction = -1.0
signal player_died


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x += direction * SPEED * delta;


func _turn_around() -> void:
	direction *= -1
	animated_sprite_2d.flip_h = !animated_sprite_2d.flip_h


func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player" and body.alive:
		emit_signal("player_died", body)
		
	
	if body is StaticBody2D or body is TileMapLayer:
		_turn_around()


func _on_timer_timeout() -> void:
	_turn_around()
	
	
