extends Node
class_name input_node

@export var direction : Vector2

func _process(delta: float):
	direction = Vector2(Input.get_axis("left","right"), Input.get_axis("up", "down")).normalized()
	return direction
