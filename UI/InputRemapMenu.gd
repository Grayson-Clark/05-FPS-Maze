extends Control

func _on_Quit_pressed():
	if get_tree().get_current_scene().get_name() == "Game":
		self.visible = false
	else:
		get_tree().change_scene("res://UI/MainMenu.tscn")
