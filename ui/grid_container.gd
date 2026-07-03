extends GridContainer

var total_buttoms: int

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	columns = 3
	for i in range(6):
		var button = Button.new()
		add_child(button)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
