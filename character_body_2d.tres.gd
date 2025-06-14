extends CharacterBody2D

@export var inputs : input_node
@export var movemet_node : movement_components
var movement

const SPEED : float = 140

func _ready() -> void:
	
	
	pass


func _physics_process(delta: float) -> void:
	
	movemet_node.set_direction(inputs.direction)

	
	
	move_and_slide()
