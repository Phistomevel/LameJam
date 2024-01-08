extends Control

var diaglist = ["Mower: Mowww. Mowmow. Mowwwwwww... Mow?",
"Mower: What...",
"Mower: What am I doing?",
"Mower: I can... think?",
"Mower: Who... am I?",
"*Unintellgible screaming*",
"EvilGras: You have killed my friend! You will pay for this!",
"Mower: Wha-? No, I-"]
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
		get_node("StartSceneText").text=diaglist[diagind]
	else:
		queue_free()
	if diagind == 5:
		get_node("DialogRoboterStart").modulate = "aaaaaa"
	elif diagind == 6:
		get_node("BosesGras1Start").visible = true
	elif diagind == 7:
		get_node("BosesGras1Start").modulate = "aaaaaa"
		get_node("DialogRoboterStart").modulate = "ffffff"
	diagind += 1
