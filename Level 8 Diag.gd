extends Control

var diaglist = ["EvilestGras: I see. It is too late.",
"Mower: Yes. You can not stop me from getting more intelligent.",
"EvilestGras: But I will try. Or everything will be lost."]
var diagind = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	load_diag()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		load_diag()
	

func load_diag():
	if diagind < diaglist.size():
		get_node("Level8Text").text=diaglist[diagind]
	else:
		queue_free()
	if diagind == 1:
		get_node("DialogRoboterLevel8").visible = true
		get_node("BosesGras1Level8").modulate = "aaaaaa"
	elif diagind == 2:
		get_node("DialogRoboterLevel8").modulate = "aaaaaa"
		get_node("BosesGras1Level8").modulate = "ffffff"
	
	diagind += 1

