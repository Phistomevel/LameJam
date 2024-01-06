extends Line2D

var RotationSpeed: float 
var DashSpeed: float
var DashLength: float
var DashCooldownLength: float

var dash
var dashCooldown
# Called when the node enters the scene tree for the first time.
func _ready():
	RotationSpeed = get_parent().RotationSpeed
	DashSpeed = get_parent().DashSpeed
	DashLength = get_parent().DashLength
	DashCooldownLength = get_parent().DashCooldownLength 
	dashCooldown = DashCooldownLength
	dash = 0
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_key_pressed(KEY_SHIFT) && dashCooldown > DashCooldownLength:
		dash = DashLength
		dashCooldown = 0
	if dash > 0:
		dash = dash - delta
		add_point(Vector2(0, -dash*5),0)
	else:
		dashCooldown += delta
		print(points.size())
		if points.size() >=1:
			remove_point(0)
	pass
