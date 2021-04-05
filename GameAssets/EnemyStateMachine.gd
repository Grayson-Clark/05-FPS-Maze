extends StateMachine

enum states {PATROL, SEARCH}
var target

onready var enemyBody = $".."
onready var player = $"../../../Player"
var spaceState

func _ready():
	spaceState = enemyBody.get_world().direct_space_state

func _state_logic(delta):
	if target:
		if target.is_in_group("player"):
			enemyBody.look_at(player.global_transform.origin, Vector3.UP)
			enemyBody.move_and_slide((target.global_transform.origin - enemyBody.global_transform.origin).normalized() * 3.0, Vector3.UP)
func _get_transition(delta):
	return null

func _enter_state(new_state, old_state):
	pass

func _exit_state(old_state, new_state):
	pass

func _on_detectionRadius_body_entered(body):
	if body.is_in_group("player"):
		target = body
		$"../Scrape".play()


func _on_detectionRadius_body_exited(body):
	if body.is_in_group("player"):
		target = null
		$"../Scrape".stop()


func _on_deathZone_body_entered(body):
	if body.is_in_group("player"):
		get_tree().change_scene("res://UI/DeathScreen.tscn")
