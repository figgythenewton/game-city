extends Node

class_name State

@export var can_move : bool = true
var next_state : State
var playback : AnimationNodeStateMachinePlayback
var character : CharacterBody2D

func state_input(event : InputEvent):
	pass

func state_process(delta):
	pass

func on_enter():
	pass
	
func on_exit():
	pass
