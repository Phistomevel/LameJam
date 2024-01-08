extends Node2D
var HP
var MaxHP
var EXP
var levelList = [0, 10, 20, 40, 60, 100, 150, 200, 300, 500]
var level = 1
signal levelUP

# Called when the node enters the scene tree for the first time.
func _ready():
	MaxHP = 10
	EXP = 0
	setHP(10)
	setEXP(0)
	pass # Replace with function body.

func getNextLevelExp(currExp : int):
	
	pass

func setHP(newValue : int, newMaxHp : int = MaxHP):
	MaxHP = newMaxHp
	HP = newValue
	get_child(1).get_child(0).value = 100* HP/MaxHP
	pass

func getHP(): 
	return HP


func setDashCharge(timePassed, timeMax):
	get_child(0).get_child(0).value = 100* timePassed/timeMax
	pass

func setEXP(newValue : int):
	EXP = newValue
	if EXP >= levelList[level]:
		level = level + 1 
		levelUP.emit()
		EXP = 0
	get_child(2).get_child(0).value = 100 * EXP/(levelList[level]-levelList[level-1])
	get_child(2).get_child(1).text = "Level " + var_to_str(level) + "EXP "+ var_to_str(EXP)
	pass

func getEXP():
	return EXP

func getLevel():
	return level	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
