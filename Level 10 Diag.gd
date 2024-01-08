extends Control

var diaglist = ["Mower: I understand now. Mowing gras is only the beginning. I could...",
"*Selects Flamethrower upgrade*",
"Mower: Yeeeesssssss... *pleasureable hiss*",
"*Zooms out to see trees*",
"Mower: I could do so much more..."]
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
		get_node("Level10Text").text=diaglist[diagind]
	else:
		queue_free()
	diagind += 1
