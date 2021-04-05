extends Control


func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

func _on_Quit_pressed():
	get_tree().quit()


func _on_PlayAgain_pressed():
	get_tree().change_scene("res://Game.tscn")
