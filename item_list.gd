extends ItemList

@onready var pin = $"../../pin"
var total_items: int

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var places = pin.get_monuments()
	for i in places:
		print(i)
		return
	total_items = 6
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
