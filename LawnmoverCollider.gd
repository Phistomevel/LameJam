extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func area_entered(other):
	print("heyooo")
	if get_parent().is_dashing:
		print("heyoo")
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
