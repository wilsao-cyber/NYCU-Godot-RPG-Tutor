extends Area2D

@export var ID = 0
@export var CharaName = "default"
@export var Lv = 1
var currentHP = 0
@export var MaxHp = 0
@export var Atk = 1
@export var def = 1
@export var speed = 1
@export var currentXP = 0
@export var Skills = [0,0,0,0]
@export var isOwned = false
@export var isAlive = true
var choose = false
signal TargetChoosen

# Called when the node enters the scene tree for the first time.
func _ready():
	isAlive = true
	currentHP = MaxHp
	pass # Replace with function body.

func _onChoosen():
	print("Hello")
	pass

func _process(delta):
	if Input.is_action_just_pressed("Interact") and choose:
		_onChoosen()
	pass

func _on_mouse_entered():
	choose = true
	pass # Replace with function body.


func _on_mouse_exited():
	choose = false
	pass # Replace with function body.
