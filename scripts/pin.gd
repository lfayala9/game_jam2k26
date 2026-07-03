extends Node2D

#@export var first_pos: Control
#@export var second_pos: Control
#@export var third_pos: Control
#@export var fourth_pos: Control
#@export var fifth_pos: Control


@onready var monuments = {
	0: $"../Control" ,
	1: $"../Control2",
	2: $"../Control3"
}

func get_monuments():
	return (monuments)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position = monuments[0].position + Vector2(0, -30)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
