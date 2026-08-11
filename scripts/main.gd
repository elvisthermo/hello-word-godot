extends Node2D

const DeathScreen = preload("res://scripts/death_screen.gd")
const GameCompleteScreen = preload("res://scripts/game_complete_screen.gd")
@onready var fade: ColorRect = $HUD/Fade

var score:int = 0;
@onready var score_label: Label = $HUD/ScorePanel/scoreLabel
@onready var music_theme: AudioStreamPlayer2D = $musicTheme
var level: int = 1
var death_screen: CanvasLayer
var game_complete_screen: CanvasLayer
var current_level_root: Node = null

func _ready() -> void:
	current_level_root = get_node("LevelRoot")
	death_screen = DeathScreen.new()
	add_child(death_screen)
	game_complete_screen = GameCompleteScreen.new()
	add_child(game_complete_screen)
	await _load_level(level, true)


func _load_level(level_number: int, fist_load:bool) -> void:
	if not fist_load:
		await _fade(1.0)
	
	var level_path = "res://scenes/level%s.tscn" % level_number
	if not ResourceLoader.exists(level_path):
		music_theme.stop()
		game_complete_screen.show_screen()
		return

	if current_level_root:
		current_level_root.queue_free()

	current_level_root = load(level_path).instantiate()
	add_child(current_level_root)
	current_level_root.name = "LevelRoot"
	_setup_level(current_level_root)
	await _fade(0.0)
	
func _setup_level(level_root: Node) -> void:
	music_theme.play()
	var exit = level_root.get_node_or_null("Exit")

	if exit:
		exit.body_entered.connect(on_exit_body_entered)
		

	var apples = level_root.get_node_or_null("Collect")
	if apples:
		for apple in apples.get_children():
			apple.colected.connect(increase_score)

	var enemies = level_root.get_node_or_null("Enemies")
	if enemies:
		for enemy in enemies.get_children():
			enemy.player_died.connect(_on_player_died)
	

func _on_player_died(body) -> void:
	body.die()
	music_theme.stop()
	await get_tree().create_timer(1.2).timeout
	_fade(1.0)
	death_screen.show_screen()

func increase_score() -> void:
	score += 1
	score_label.text = "SCORE %s" % score
		
func on_exit_body_entered(body: Node2D) -> void:
	level += 1
	body.can_move = false;
	call_deferred("_load_level", level, false)

	
func _fade(to_alpha: float) -> void:
	var tween := create_tween()
	tween.tween_property(fade, "color:a", to_alpha, 0.5)
	await tween.finished
	
