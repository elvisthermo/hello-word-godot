extends Node2D
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var colect_sound: AudioStreamPlayer2D = $colect_sound
signal colected
var is_colected: bool = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	if is_colected:
		return

	if body.name != "Player":
		return

	is_colected = true
	animated_sprite_2d.animation = "colected"
	colect_sound.play()
	colected.emit()
	collision_shape_2d.disabled = true
	call_deferred("_on_disabled_collision")

func _on_disabled_collision() -> void:
	collision_shape_2d.disabled = true


func _on_animated_sprite_2d_animation_looped() -> void:
	if animated_sprite_2d.animation == "colected":
		queue_free()
	
