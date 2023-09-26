extends Control

@export var CurBattle := BattleLogic
@export var CurSys := SystemLogic
@export var CurChara = {}
var party =[]
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
	party = General.Party
	var partyLen = party.size()
	var partyAlive = [$CanvasLayer/CharaBox/VBoxContainer/CharaButton1,$CanvasLayer/CharaBox/VBoxContainer/CharaButton2,$CanvasLayer/CharaBox/VBoxContainer/CharaButton3,$CanvasLayer/CharaBox/VBoxContainer/CharaButton4,$CanvasLayer/CharaBox/VBoxContainer/CharaButton5]
	if partyLen >1:
		for i in range (0,partyLen-1):
			partyAlive[i].disabled = !party[i+1]["isAlive"]
	if partyLen<5:	
		for i in range (partyLen-1, 5):
			partyAlive[i].disabled = true
		
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
	if General.AliveCount<1:
		print("cannot choose")
		return
	
	
	pass


func _on_battle_button_pressed():
	pass # Replace with function body.


func _on_choose_button_pressed():
	if General.AliveCount>1 or (!party[0]["isAlive"] and General.AliveCount==1):
		$CanvasLayer/CharaBox.visible = true
	
	pass # Replace with function body.


func _on_item_button_pressed():
	pass # Replace with function body.


func _on_run_button_pressed():
	pass # Replace with function body.


func _on_chara_button_1_pressed():
	var change = party[0]
	party[0] = party[1]
	party[1] = change
	print(party[0]["Name"])
	$CanvasLayer/CharaBox.visible = false
	if !party[1]["isAlive"]:
		$CanvasLayer/CharaBox/VBoxContainer/CharaButton1.disabled = true
	pass # Replace with function body.


func _on_chara_button_2_pressed():
	var change = party[0]
	party[0] = party[2]
	party[2] = change
	print(party[0]["Name"])
	$CanvasLayer/CharaBox.visible = false
	if !party[2]["isAlive"]:
		$CanvasLayer/CharaBox/VBoxContainer/CharaButton2.disabled = true
	pass # Replace with function body.


func _on_chara_button_3_pressed():
	pass # Replace with function body.


func _on_chara_button_4_pressed():
	pass # Replace with function body.


func _on_chara_button_5_pressed():
	pass # Replace with function body.
