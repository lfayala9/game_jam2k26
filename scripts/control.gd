extends Control

@export var _energia: int
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$BARRA.reset_size()
	$BARRA.modulate = Color(2.14, 0.0, 0.395, 1.0)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$BARRA.text = "ENERGIA: " + str(_energia)
	pass
