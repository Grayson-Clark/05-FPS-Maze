extends Control




func _on_Controls_pressed():
	$InputRemapMenu.visible = true


func _on_Quit_pressed():
	get_tree().paused = false
	get_tree().change_scene("res://UI/MainMenu.tscn")

