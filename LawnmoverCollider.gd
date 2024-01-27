extends Area2D

var lifesteal = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_entered(area):
	var xpbar = get_parent().get_child(0).get_child(0)
	#print(area.get_parent().Speed)
	if area.get_parent().name != "Lawnmower":
		$"../Camera2D".shake()
		print(area.get_parent().name)
		#print(area.name)
		xpbar.setEXP(xpbar.getEXP() + ceil(area.get_parent().Speed))
		lifesteal += get_parent().Vampirism
		if  lifesteal>=1:
			lifesteal -= 1
			xpbar.setHP(xpbar.getHP()+1)
		area.get_parent().queue_free()
	pass # Replace with function body.


func _on_harmed(area):
	get_parent().get_child(0).get_child(0).setHP(get_parent().get_child(0).get_child(0).getHP()-1)
	area.get_parent().queue_free()
	pass # Replace with function body.
