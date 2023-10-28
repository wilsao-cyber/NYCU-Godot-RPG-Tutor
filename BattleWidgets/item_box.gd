extends Control
@onready var Mons = [$MonsChoose/VBoxContainer/Mons1, $MonsChoose/VBoxContainer/Mons2, $MonsChoose/VBoxContainer/Mons3, $MonsChoose/VBoxContainer/Mons4, $MonsChoose/VBoxContainer/Mons5, $MonsChoose/VBoxContainer/Mons6]
@onready var itemblocks = [$ItemBox/ScrollContainer/VBoxContainer/_itemBox, $ItemBox/ScrollContainer/VBoxContainer/_itemBox2, $ItemBox/ScrollContainer/VBoxContainer/_itemBox3, $ItemBox/ScrollContainer/VBoxContainer/_itemBox4, $ItemBox/ScrollContainer/VBoxContainer/_itemBox5, $ItemBox/ScrollContainer/VBoxContainer/_itemBox6, $ItemBox/ScrollContainer/VBoxContainer/_itemBox7, $ItemBox/ScrollContainer/VBoxContainer/_itemBox8, $ItemBox/ScrollContainer/VBoxContainer/_itemBox9, $ItemBox/ScrollContainer/VBoxContainer/_itemBox10, $ItemBox/ScrollContainer/VBoxContainer/_itemBox11, $ItemBox/ScrollContainer/VBoxContainer/_itemBox12, $ItemBox/ScrollContainer/VBoxContainer/_itemBox13, $ItemBox/ScrollContainer/VBoxContainer/_itemBox14, $ItemBox/ScrollContainer/VBoxContainer/_itemBox15, $ItemBox/ScrollContainer/VBoxContainer/_itemBox16, $ItemBox/ScrollContainer/VBoxContainer/_itemBox17, $ItemBox/ScrollContainer/VBoxContainer/_itemBox18, $ItemBox/ScrollContainer/VBoxContainer/_itemBox19, $ItemBox/ScrollContainer/VBoxContainer/_itemBox20, $ItemBox/ScrollContainer/VBoxContainer/_itemBox21, $ItemBox/ScrollContainer/VBoxContainer/_itemBox22, $ItemBox/ScrollContainer/VBoxContainer/_itemBox23, $ItemBox/ScrollContainer/VBoxContainer/_itemBox24, $ItemBox/ScrollContainer/VBoxContainer/_itemBox25, $ItemBox/ScrollContainer/VBoxContainer/_itemBox26, $ItemBox/ScrollContainer/VBoxContainer/_itemBox27, $ItemBox/ScrollContainer/VBoxContainer/_itemBox28]
var lan = len(General.Party)
var peritembox = load("res://BattleWidgets/_item_box.tscn")
func _ready():
	print(lan)
	for i in range(lan):
		Mons[i].icon = General.Party[i]["Icon"]
		Mons[i].visible = true
	for j in len(General._Items):
		itemblocks[j].visible = true
		itemblocks[j].Name = General._Items[j]["name"]
		itemblocks[j].Num = General._Items[j]["indexs"]
		itemblocks[j].value = General._Items[j]["value"]
		pass
	pass
# Called when the node enters the scene tree for the first time.




func _restMons(mons):
	for i in Mons:
		i.disabled = false
	mons.disabled = true
	pass

func _on_mons_1_pressed():
	_restMons($MonsChoose/VBoxContainer/Mons1)
	General.currentCount = 0
	pass # Replace with function body.


func _on_mons_2_pressed():
	_restMons($MonsChoose/VBoxContainer/Mons2)
	General.currentCount = 1
	pass # Replace with function body.


func _on_mons_3_pressed():
	_restMons($MonsChoose/VBoxContainer/Mons3)
	General.currentCount = 2
	pass # Replace with function body.


func _on_mons_4_pressed():
	_restMons($MonsChoose/VBoxContainer/Mons4)
	General.currentCount = 3
	pass # Replace with function body.


func _on_mons_5_pressed():
	_restMons($MonsChoose/VBoxContainer/Mons5)
	General.currentCount = 4
	pass # Replace with function body.


func _on_mons_6_pressed():
	_restMons($MonsChoose/VBoxContainer/Mons6)
	General.currentCount = 5
	pass # Replace with function body.


func _on_back_button_pressed():
	get_tree().change_scene_to_file("res://BattleWidgets/battle_scene.tscn")
	pass # Replace with function body.

