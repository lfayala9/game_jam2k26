extends Control

@export var image: Texture2D
@export var mon_name: String
@export var place_id: int
@export var _pos: Vector2
@export var pin: Node2D
@export var states: Control
@export var mon_type: String
const place_info = preload("res://ui/place_info.tscn")
var actual_info
var	is_visited: bool = false

var distance0to1: int = 3
var distance: int
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$mounment_texture.texture_normal = image
	$mounment_texture.scale = Vector2(0.350, 0.350)
	_pos = position
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_mounment_texture_mouse_entered() -> void:
	modulate = Color(0.8, 0.8, 0.8)
	pass # Replace with function body.

func _on_mounment_texture_pressed() -> void:
	actual_info = place_info.instantiate()
	get_tree().current_scene.add_child(actual_info)
	actual_info.show_info(place_id)
	if is_visited == false:
		pin.position = _pos + Vector2(0, -30)
		is_visited = true
		#modulate = Color(0.8, 0.8, 0.8)
		if (mon_type == "food"):
				$"../estadp"._energia += 10
		else:
				$"../estadp"._energia -= 10
	pass # Replace with function body.

func _on_mounment_texture_mouse_exited() -> void:
	if is_visited == false:
		modulate = Color(1, 1, 1)
	#actual_info.queue_free()
	pass # Replace with function body.
