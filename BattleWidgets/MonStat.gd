extends ColorRect

@onready var bar = $ProgressBar
@onready var Lv = $LVLabel
@onready var Name = $NameLabel

# Called when the node enters the scene tree for the first time.
func _ready():
	bar.value = 100
	pass
