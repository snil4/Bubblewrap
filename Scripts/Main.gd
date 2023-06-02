extends Node2D


var bubble = preload("res://Scenes/Bubble.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	initiate_row($Bubbles/Bubble1,12)
	initiate_row($Bubbles/Bubble2,13)
	initiate_row($Bubbles/Bubble3,12)
	initiate_row($Bubbles/Bubble4,13)
	initiate_row($Bubbles/Bubble5,12)
	initiate_row($Bubbles/Bubble6,13)
	initiate_row($Bubbles/Bubble7,12)
	initiate_row($Bubbles/Bubble8,13)
	
	
func initiate_row(bubble_node: Node2D, amount: int):
	var bubble_position = bubble_node.position
	for num in range(1,amount,1):
		bubble_position.x += 95
		var new_bubble = bubble.instantiate()
		new_bubble.position = bubble_position
		add_child(new_bubble)


func _on_reset_button_pressed():
	get_tree().call_group("Bubbles","_on_reset_button_pressed")
