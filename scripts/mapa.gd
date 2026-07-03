extends Sprite2D

var child_arr: Array[Node]
var actual_node: Control
@export var initial: Control
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for child in find_children("Control*"):
		child_arr.push_back(child)
	print(child_arr[0].position)
	actual_node = initial
	pass # Replace with function body.

func get_place(_a: Control):
	var pos_a = actual_node.global_position
	var pos_b = _a.global_position
	print(pos_a)
	print(pos_b)
	var distance = pos_a.distance_to(pos_b)
	print("ESTA ES LA DISTANCIA " + str(distance))
	actual_node = _a
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
