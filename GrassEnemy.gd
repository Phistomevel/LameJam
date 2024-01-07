extends Node2D

@export var Speed: int = 1
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var target = get_node("../Lawnmower").get_position()
	position = position + (target - position).normalized()*delta*Speed
	pass


func _on_area_2d_area_entered(area):
	queue_free()
	pass # Replace with function body.
