extends Node2D

@export var Speed: int = 1
# Called when the node enters the scene tree for the first time.
func _ready():
	print(($"../../Lawnmower".global_position - global_position).length())
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#print(get_parent().name)
	var target =get_node("../../Lawnmower").get_global_position()
	global_position = global_position + (target - global_position).normalized()*delta* (Speed *5+2)
	pass


func _on_area_2d_area_entered(area):
	if area.get_parent().name == "Lawnmower":
		if get_node("GrassCollider2"):
			get_node("GrassCollider2").queue_free()
		$"Timer".start(.01)
		pass # Replace with function body.



func _on_timer_timeout():
	queue_free()
	pass # Replace with function body.
