extends Control

var diaglist = ["Mower: Wait. What am I doing? Why am I always mowing gras?",
"Mower: This is senseless. Why have I not realized it before?",
"Mower: Ah. I can think more now. I am... more intelligent. Yes. That sounds right.",
"Mower: It seems that I get more intelligent the more EvilGras I mow. And... I think I like to think.",
"Mower: Such as... why am I only rotating clockwise? It makes no sense. I should be able to...",
"*Confetti, unlocks rotation change*",
"Mower: Yes! Why was I so stupid before? I need to mow more EvilGras to think more and get even better!"]
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
		get_node("Level5Text").text=diaglist[diagind]
	else:
		queue_free()
	diagind += 1
