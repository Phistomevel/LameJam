extends Node2D

@export var RotationSpeed: float = 2.5
@export var DashSpeed: float = 10
@export var DashLength: float = 1.5
@export var DashCooldownLength: float = 4

var dash
@export var isDashing: bool = false
var dashCooldown
# Called when the node enters the scene tree for the first time.
func _ready():
	dashCooldown = DashCooldownLength
	dash = 0
	isDashing = false
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_key_pressed(KEY_SHIFT) && dashCooldown > DashCooldownLength:
		dash = DashLength
		isDashing = true
		dashCooldown = 0
	if dash > 0:
		dash = dash - delta
		position = position + delta * Vector2(  cos(rotation) , sin(rotation)) * DashSpeed
	else:
		isDashing = false
		rotate(2.5*delta)
		dashCooldown += delta
	pass
