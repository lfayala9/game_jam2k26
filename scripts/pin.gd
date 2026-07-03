extends Node2D

#@export var first_pos: Control
#@export var second_pos: Control
#@export var third_pos: Control
#@export var fourth_pos: Control
#@export var fifth_pos: Control

@onready var monumentos = {
	0: $"../Control" ,
	1: $"../Control2"
}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position = monumentos[0].position + Vector2(0, -30)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
