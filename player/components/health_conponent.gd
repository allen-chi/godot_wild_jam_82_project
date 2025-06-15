extends Area2D
class_name Health_Component

@export var parent : CharacterBody2D
@export var max_health : int = 10
@export var current_health : int = 10

func _ready() -> void:
	current_health = max_health
	parent = get_parent()

func _on_area_entered(area: Damage_Component) -> void:
	
	current_health -= 10
	stun()
	print("ahhhh")
	if current_health <= max_health:
			parent.queue_free()
	pass # Replace with function body.

func stun()-> void:
	set_deferred("monitoring", false)
	await get_tree().create_timer(0.5).timeout
	set_deferred("monitoring", true)
	await get_tree().create_timer(0.5).timeout
	pass
