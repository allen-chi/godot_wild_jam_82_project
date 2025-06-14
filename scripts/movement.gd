extends Node
class_name movement_components

var velocity : Vector2
@export var speed : float = 100
@export var inputs : input_node
@export var parent : CharacterBody2D
var direction : Vector2

func _physics_process(delta: float):
	parent.velocity = direction * speed
	print("this is working")
	return velocity

func set_direction(d: Vector2):
	direction = d
	pass
