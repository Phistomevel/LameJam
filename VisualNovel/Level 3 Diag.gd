extends Control

var diaglist = ["EvilerGras: You don't understand, do you?", "Mower: ...who? No, I understand you!", "EvilerGras: *shakes gras* No. You don't understand at all what is happening. There is no hope. We must terminate you.", "Mower: No! What have I done wrong?"]
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
		get_node("Level3Text").text=diaglist[diagind]
	else:
		queue_free()
	if diagind == 1:
		get_node("BosesGras1Level3").modulate = "aaaaaa"
		get_node("DialogRoboterLevel3").visible = true
	elif diagind == 2:
		get_node("DialogRoboterLevel3").modulate = "aaaaaa"
		get_node("BosesGras1Level3").modulate = "ffffff"
	elif diagind == 3:
		get_node("BosesGras1Level3").modulate = "aaaaaa"
		get_node("DialogRoboterLevel3").modulate = "ffffff"
	diagind += 1
