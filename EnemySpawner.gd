extends Node2D
var enemylist :Array

# Called when the node enters the scene tree for the first time.
func _ready():
	enemylist.push_back(get_child(0))
	##spawnEnemy(0,position)
	pass # Replace with function body.

func spawnEnemy(type : int, pos : Vector2):
	var newEnemy = enemylist[type].duplicate(8)
	newEnemy.position = pos 
	newEnemy.set_visible(true)
	newEnemy.Speed = $"../Lawnmower".level
	newEnemy.get_child(1).monitoring = true
	newEnemy.get_child(1).monitorable = true
	add_child(newEnemy)
	
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	spawnEnemy(0, $"../Lawnmower".global_position + Vector2(randi_range(200,210)*([-1,1][randi_range(0,1)]), randi_range(200,210))*([-1,1][randi_range(0,1)]) )
	pass # Replace with function body.
