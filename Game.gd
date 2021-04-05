extends Spatial

func _ready():
	$"Instructions/Label3D".set_text("Find the key.\nEscape the maze.\nDon't die.\nCome back here once you find the key.")
	$"Door/Label3D".set_text("Door\n[Closed]")


func _on_Area_body_entered(body):
	if body.is_in_group("player") and Global.has_key:
		get_tree().change_scene("res://UI/EndGame.tscn")
