extends State

@export var ground_state : State
@export var return_animation_node : String = "move"
@export var attack_animation : String = "attack"


func _on_animation_tree_animation_finished(anim_name):
	if (attack_animation == anim_name):
		next_state = ground_state
		playback.travel(return_animation_node)
