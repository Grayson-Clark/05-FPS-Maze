extends Spatial

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	self.rotation_degrees.y += 1
	

func _on_Area_body_entered(body):
	if body.name == "Player" and not Global.has_key:
		get_node("../Key").visible = false
		Global.has_key = true
		$"/root/Game/Door/Label3D".set_text("Door\n[Open]")
		$"sfx".play(0.2)

