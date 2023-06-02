extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_input_event(viewport, event, shape_idx):
	$Area2D/PoppedSprites.show()


func _on_reset_button_pressed():
	$Area2D/PoppedSprites.hide()
