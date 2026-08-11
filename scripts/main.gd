extends Node2D

var score:int = 0;
@onready var score_label: Label = $CanvasLayer/Panel/scoreLabel

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_setup_level()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
	
func _setup_level() -> void:
	print("_setup_level")
	#colect 
	var apples = $LevelRoot.get_node_or_null("Collect")
	
	if apples:
		print("tem apples")
		for apple in apples.get_children():
			apple.colected.connect(increase_score)
	
	#conect emineis
	var enemies = $LevelRoot.get_node_or_null("Enemies")
	if enemies:
		print("tem enemies")
		for enemy in enemies.get_children():
			enemy.player_died.connect(_on_player_died)
			
	
func _on_player_died(body) -> void:
	print("player died main:", body)
	print("player levou")
	body.die()

func increase_score() -> void:
	score += 1
	print("score: ", score);
	score_label.text = "SCORE %s" % score
		


	
