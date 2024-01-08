extends AudioStreamPlayer

var streams: Array = [0,0,0,0,0]
var progress= 0

# Called when the node enters the scene tree for the first time.
func _ready():
	streams[0] = preload("res://intro.mp3")
	streams[1] = preload("res://bridge.mp3")
	streams[2] = preload("res://loop1.mp3")
	streams[3] = preload("res://bridge2.mp3")
	streams[4] = preload("res://loop2.mp3")
	play()
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_finished():
	progress+= 1
	if progress > 4:
		progress = 4
	stream = streams[progress] 
	play()
	pass # Replace with function body.
