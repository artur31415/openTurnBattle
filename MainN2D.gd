extends Node2D


var BarRed = preload("res://img/barHorizontal_red.png")
var BarGreen = preload("res://img/barHorizontal_green.png")
var BarYellow = preload("res://img/barHorizontal_yellow.png")

var BattlerN2D = preload("res://scenes/BattlerN2D.gd")

var EnemyBattlers = []
var PlayerBattler

#--------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------

func UpdateHealthBar(value):
	if value < $HealthTP.max_value * 0.7:
		$HealthTP.texture_progress = BarYellow
	elif value < $HealthTP.max_value * 0.35:
		$HealthTP.texture_progress = BarRed
	else:
		$HealthTP.texture_progress = BarGreen
	$HealthTP.value = value

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
