extends Node2D

@export var RotationSpeed: float = 2.5
@export var DashSpeed: float = 10
@export var DashLength: float = 1.5
@export var DashCooldownLength: float = 4
@export var Vampirism : float = 0.1
var level = 1
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
		get_child(0).get_child(0).setDashCharge(dash, DashLength)
		dash = dash - delta
		position = position + delta * Vector2(  cos(rotation) , sin(rotation)) * DashSpeed
	else:
		isDashing = false
		rotate(2.5*delta)
		dashCooldown += delta
		get_child(0).get_child(0).setDashCharge(dashCooldown, DashCooldownLength)
	pass


func _on_level_up():
	level = level + 1
	Engine.time_scale = 0
	get_parent().get_node("LevelUpScreen").onLevelUp(level)
	pass # Replace with function body.
