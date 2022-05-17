extends Node2D


var BarRed = preload("res://img/barHorizontal_red.png")
var BarGreen = preload("res://img/barHorizontal_green.png")
var BarYellow = preload("res://img/barHorizontal_yellow.png")

var BattlerN2D = preload("res://scenes/BattlerN2D.tscn")

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

func ShowEnemyBattlerStatus(battlerScene):
	$NameL.text = battlerScene.battler.Name

func GetEnemyBattlerByKey(battlerKey):
	for battlerScene in EnemyBattlers:
		if battlerScene.battler.Key == battlerKey:
			return battlerScene

	return null

func on_battler_clicked_received(battlerKey):
	print("on_battler_clicked_received>", battlerKey)
	var selectedBattler = GetEnemyBattlerByKey(battlerKey)
	if selectedBattler != null:
		ShowEnemyBattlerStatus(selectedBattler)

# Called when the node enters the scene tree for the first time.
func _ready():
	var enemyBattlerScene = BattlerN2D.instance()
	var enemyBattler = Battler.new("B_KEY", "Little Bat")
	enemyBattlerScene.Setup(enemyBattler, Vector2(464, 248))
	enemyBattlerScene.connect("battler_clicked", self, "on_battler_clicked_received")
	add_child(enemyBattlerScene)
	EnemyBattlers.append(enemyBattlerScene)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
