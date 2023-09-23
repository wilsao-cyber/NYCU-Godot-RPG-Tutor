extends Control

@export var CurBattle := BattleLogic
@export var CurSys := SystemLogic
enum BattleLogic{
	PlayerTurn,
	EnemyTurn,
	SystemTurn
}

enum SystemLogic{
	StartBattle,
	PlayerDied,
	EnemyDied,
	EndBattle
}

# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.

func BattleStatus():
	match CurBattle:
		BattleLogic.PlayerTurn:
			pass
		BattleLogic.EnemyTurn:
			pass
		BattleLogic.SystemTurn:
			pass
	pass
	
func SystemStatus():
	match CurSys:
		SystemLogic.StartBattle:
			pass
		SystemLogic.PlayerDied:
			pass
		SystemLogic.EnemyDied:
			pass
		SystemLogic.EndBattle:
			pass
		
	pass

func ChooseChara():
	
	pass
