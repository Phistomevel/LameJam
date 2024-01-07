extends Area2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_entered(area):
	if not get_parent().isDashing:
		print("you died")
		return 0
	var xpbar = get_parent().get_child(0).get_child(0)
	print(area.get_parent().Speed)
	xpbar.setEXP(xpbar.getEXP() + ceil(area.get_parent().Speed))
	pass # Replace with function body.
