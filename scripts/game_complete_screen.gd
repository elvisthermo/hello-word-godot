extends CanvasLayer

func _ready() -> void:
	visible = false
	_build_ui()


func show_screen() -> void:
	visible = true


func _build_ui() -> void:
	var overlay = ColorRect.new()
	overlay.color = Color(0, 0, 0, 0.75)
	overlay.set_anchors_preset(Control.PRESET_FULL_RECT)
	add_child(overlay)

	var panel = Panel.new()
	panel.custom_minimum_size = Vector2(360, 240)
	panel.set_anchors_preset(Control.PRESET_CENTER)
	panel.offset_left = -180
	panel.offset_top = -120
	panel.offset_right = 180
	panel.offset_bottom = 120
	add_child(panel)

	var vbox = VBoxContainer.new()
	vbox.set_anchors_preset(Control.PRESET_FULL_RECT)
	vbox.alignment = BoxContainer.ALIGNMENT_CENTER
	vbox.add_theme_constant_override("separation", 20)
	panel.add_child(vbox)

	var label = Label.new()
	label.text = "Você Venceu!"
	label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	label.add_theme_font_size_override("font_size", 42)
	label.add_theme_color_override("font_color", Color(0.2, 0.9, 0.3))
	vbox.add_child(label)

	var subtitle = Label.new()
	subtitle.text = "Todos os níveis completos!"
	subtitle.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	subtitle.add_theme_font_size_override("font_size", 20)
	subtitle.add_theme_color_override("font_color", Color(1, 1, 1, 0.8))
	vbox.add_child(subtitle)

	var btn_restart = Button.new()
	btn_restart.text = "Jogar Novamente"
	btn_restart.custom_minimum_size = Vector2(220, 48)
	btn_restart.pressed.connect(_on_restart)
	vbox.add_child(btn_restart)

	var btn_quit = Button.new()
	btn_quit.text = "Sair"
	btn_quit.custom_minimum_size = Vector2(220, 48)
	btn_quit.pressed.connect(_on_quit)
	vbox.add_child(btn_quit)


func _on_restart() -> void:
	get_tree().reload_current_scene()


func _on_quit() -> void:
	get_tree().quit()
