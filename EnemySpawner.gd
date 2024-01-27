extends Node2D
var enemylist :Array
@export var timerCooldown : float = 1.0
# Called when the node enters the scene tree for the first time.
func _ready():
	$"Timer".wait_time = timerCooldown
	enemylist.push_back(get_child(0))
	##spawnEnemy(0,position)
	pass # Replace with function body.

func spawnEnemy(type : int, pos : Vector2):
	var newEnemy = enemylist[type].duplicate(8)
	add_child(newEnemy)
	newEnemy.global_position = pos 
	print((newEnemy.global_position - $"../Lawnmower".global_position).length())
	newEnemy.set_visible(true)
	newEnemy.Speed = $"../Lawnmower".level
	newEnemy.get_child(3).speed_scale = $"../Lawnmower".level*0.1
	newEnemy.get_child(1).monitoring = true
	newEnemy.get_child(1).monitorable = true
	print((newEnemy.global_position - $"../Lawnmower".global_position).length())
	
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	spawnEnemy(0, $"../Lawnmower".global_position + Vector2.from_angle(randf()*360)*650 )
	pass # Replace with function body.
