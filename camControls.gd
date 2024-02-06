extends Camera2D

var shake_on : bool = false
var shake_timer : float = 0.0
# Called when the node enters the scene tree for the first time.
func _ready():
	shake()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	global_rotation = 0
	global_position = $"../Lawnmower".get_global_position()
	#if shake_on == true:
	#	var shakepos_seconds = (Time.get_ticks_msec()-shake_timer)*0.001
	#	position += Vector2(0,sin(shakepos_seconds)/shakepos_seconds)*100
	#else:
		#position = Vector2(0,0)
	pass


func shake():
	shake_on = true;
	shake_timer = Time.get_ticks_msec()
	pass
