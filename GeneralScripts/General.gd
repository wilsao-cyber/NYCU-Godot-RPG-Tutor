extends Node

var AliveCount = 0
var Party = []
var Chara = {"ID":0, "Name":"defaut", "LV" : 1, "currentXP": 0, "speed": 0, "skills":[],"isAlive":false}
# Called when the node enters the scene tree for the first time.
func _ready():
	Party.append(Chara)
	Chara = {"ID":1, "Name":"mons1", "LV" : 1, "currentXP": 0, "speed": 0, "skills":[],"isAlive":true}
	Party.append(Chara)
	Chara = {"ID":1, "Name":"mons2", "LV" : 1, "currentXP": 0, "speed": 0, "skills":[],"isAlive":true}
	Party.append(Chara)
	for i in Party:
		if i["isAlive"]:
			AliveCount+=1
	pass # Replace with function body.