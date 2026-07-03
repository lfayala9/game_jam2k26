extends Node2D

@onready var place_desc: RichTextLabel = $Control/RichTextLabel
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func show_info(id: int):
	match id:
		0:
			place_desc.text = "has viajado 2km"
		1:
			place_desc.text = "Informacion del lugar: \blublublbublublublbulublublubublublublublub"
	print(id)
