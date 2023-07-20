extends State

class_name LandingState

@export var JUMP_VELOCITY : float = -300
@export var ground_state : State
@export var air_state : State
@export var landing_animation : String = "jump_end"
@export var jump_animation : String = "jump_start"

func _on_animation_tree_animation_finished(anim_name):
	if(landing_animation == anim_name):
		next_state = ground_state

func state_input(event : InputEvent):
	if (event.is_action_pressed("jump")):
		jump()
		
func jump():
	character.velocity.y = JUMP_VELOCITY
	next_state = air_state
	playback.travel(jump_animation)

